//
//  SimpleSigner.swift
//  AlphaWallet
//
//  Created by sunny on 2024/4/11.
//

import Foundation
import web3swift
import userop
import CryptoSwift
import BigInt
import Web3Core

struct SimpleSigner: Signer {
    private let privateKey: Data

    init(privateKey: Data) {
        self.privateKey = privateKey
    }

    func getAddress() async -> EthereumAddress {
        try! await Utilities.publicToAddress(getPublicKey())!
    }

    func getPublicKey() async throws -> Data {
        Utilities.privateToPublic(privateKey)!
    }

    func signMessage(_ data: Data) async throws -> Data {
       let hash = Utilities.hashPersonalMessage(data)!
        let (compressedSignature, rawSignature) = SECP256K1.signForRecovery(hash: hash,
                                                                 privateKey: privateKey,
                                                                 useExtraEntropy: false)
        print("sigature:\(compressedSignature?.toHexString()) \(rawSignature?.toHexString())")
        return compressedSignature!
    }
}
