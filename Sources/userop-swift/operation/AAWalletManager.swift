//
//  AAWalletManager.swift
//  AlphaWallet
//
//  Created by sunny on 2024/4/12.
//

import Foundation
import userop
import web3swift
import Web3Core
import CryptoSwift
import BigInt


class AAWalletManager: NSObject {
    
    public var contract: EthereumContract?
    public var account: SimpleAccountBuilder?

    public static func genalAAWalletAddress(privateKey: Data) async throws -> String {
        
        let rpc: URL = URL(string: "https://lisbon-testnet-rpc.matchtest.co/")!
        let bundler: URL =  URL(string: "http://54.64.130.107:3457/rpc")!
       
        let entryPointAddress: EthereumAddress = EthereumAddress.init("0xf77b4BEcf6C0660F2A200D2ec5139c0Eb5303497")!
        let factoryAddress = EthereumAddress.init("0x2e1E6DE6b63daFc99C6865DD39c413a195fC6969")!

        do {
            let contractAddress = EthereumAddress.init("0x66B0115D8C3bC8709C102B8652cD689C5E5c9A4A")!
            let signer = SimpleSigner(privateKey: privateKey)
            let public_key = try await signer.getPublicKey().toHexString()
            print("public_key:\(public_key)")
            let account =  try await SimpleAccountBuilder(signer: signer,
                                                          rpcUrl: rpc,
                                                          bundleRpcUrl: bundler,
                                                          entryPoint: entryPointAddress,
                                                          factory: factoryAddress,
                                                          salt: 0)
            print("account: \(account), address: \(account.sender.address)")
            return account.sender.address
        } catch {
            return ""
        }
    }
}
