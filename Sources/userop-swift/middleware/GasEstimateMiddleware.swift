//
//  GasEstimateMiddleware.swift
//
//
//  Created by liugang zhang on 2023/8/23.
//

import Foundation
import BigInt
import Web3Core

struct GasEstimate: APIResultType {
    let preVerificationGas: BigUInt
    let verificationGasLimit: BigUInt
    let callGasLimit: BigUInt
}

extension GasEstimate {
    enum CodingKeys: CodingKey {
        case preVerificationGas
        case verificationGas
        case callGasLimit
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        do {
            let preVerificationGas = try container.decodeHex(BigUInt.self, forKey: .preVerificationGas)
            var real_preVerificationGas =  preVerificationGas * BigUInt(12) / BigUInt(10)
            if real_preVerificationGas < BigUInt(54120) {
                  real_preVerificationGas = BigUInt(54120)
            }
            let verificationGasLimit = try container.decodeHex(BigUInt.self, forKey: .verificationGas)
            var real_verificationGasLimit = verificationGasLimit * BigUInt(12) / BigUInt(10) //BigUInt(110000)//BigUInt(100000)
            if  real_verificationGasLimit < BigUInt(110000)  {
               real_verificationGasLimit = BigUInt(110000)
             }
            var callGasLimit = try container.decodeHex(BigUInt.self, forKey: .callGasLimit)
            if callGasLimit < BigUInt(44160) {
             callGasLimit =  BigUInt(44160)

            }
            self.init(preVerificationGas: real_preVerificationGas,
                      verificationGasLimit: real_verificationGasLimit,
                      callGasLimit: callGasLimit)
        } catch {
            let preVerificationGas = try container.decode(Int.self, forKey: .preVerificationGas)
            let verificationGasLimit = try container.decode(Int.self, forKey: .verificationGas)
            let callGasLimit = try container.decode(Int.self, forKey: .callGasLimit)
            self.init(preVerificationGas: BigUInt(preVerificationGas),
                      verificationGasLimit: BigUInt(verificationGasLimit),
                      callGasLimit: BigUInt(callGasLimit))
        }
    }
}

/// Middleware to estiamte `UserOperation` gas from bundler server.
public struct GasEstimateMiddleware: UserOperationMiddleware {
    let rpcProvider: JsonRpcProvider

    public init(rpcProvider: JsonRpcProvider) {
        self.rpcProvider = rpcProvider
    }

    public func process(_ ctx: inout UserOperationMiddlewareContext) async throws {
        let estimate: GasEstimate = try await rpcProvider.send("eth_estimateUserOperationGas", parameter: [ctx.op, ctx.entryPoint]).result

        //ctx.op.nonce = BigUInt(28)
        ctx.op.preVerificationGas = estimate.preVerificationGas
        ctx.op.verificationGasLimit = estimate.verificationGasLimit
        ctx.op.callGasLimit = estimate.callGasLimit
    }
}

