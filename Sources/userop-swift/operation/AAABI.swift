//
//  Abi.swift
//
//
//  Created by liugang zhang on 2023/8/23.
//

import Foundation

public enum AAAbi {
    public static let simpleAccount = """
    [{
          "inputs": [
            {
              "internalType": "address",
              "name": "addr",
              "type": "address"
            },
            {
              "internalType": "uint256",
              "name": "itype_",
              "type": "uint256"
            },
            {
              "internalType": "uint256",
              "name": "event_",
              "type": "uint256"
            },
            {
              "internalType": "uint256",
              "name": "related_id_",
              "type": "uint256"
            },
            {
              "internalType": "uint256",
              "name": "change_amount_",
              "type": "uint256"
            }
          ],
          "name": "integralChangeRecords",
          "outputs": [],
          "stateMutability": "nonpayable",
          "type": "function"
        }]
    """
    
    public static let createAccount = """
    [{
          "inputs": [
                {"internalType":"string","name":"mess","type":"string"}
          ],
          "name": "something",
          "outputs": [],
          "stateMutability": "nonpayable",
          "type": "function"
        }]
    """

    public static let simpleAccountFactory = """
    [{"inputs":[{"internalType":"contract IEntryPoint","name":"_entryPoint","type":"address"}],"stateMutability":"nonpayable","type":"constructor"},{"inputs":[],"name":"accountImplementation","outputs":[{"internalType":"contract SimpleAccount","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"owner","type":"address"},{"internalType":"uint256","name":"salt","type":"uint256"}],"name":"createAccount","outputs":[{"internalType":"contract SimpleAccount","name":"ret","type":"address"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"owner","type":"address"},{"internalType":"uint256","name":"salt","type":"uint256"}],"name":"getAddress","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"}]
    """

    public static let p256Account = """
    [{"inputs":[{"internalType":"contract IEntryPoint","name":"anEntryPoint","type":"address"},{"internalType":"contract ISecp256r1","name":"aSecp256r1","type":"address"},{"internalType":"contract EmailGuardian","name":"anEmailGuardian","type":"address"}],"stateMutability":"nonpayable","type":"constructor"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"timestamp","type":"uint256"},{"indexed":false,"internalType":"bytes","name":"publicKey","type":"bytes"}],"name":"AccountPendingRecovey","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"bytes","name":"publicKey","type":"bytes"}],"name":"AccountRecovered","type":"event"},{"anonymous":false,"inputs":[],"name":"AccountRecoveryStopped","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"bytes","name":"publicKey","type":"bytes"}],"name":"AccountResetted","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"address","name":"previousAdmin","type":"address"},{"indexed":false,"internalType":"address","name":"newAdmin","type":"address"}],"name":"AdminChanged","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"beacon","type":"address"}],"name":"BeaconUpgraded","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"bytes32","name":"email","type":"bytes32"}],"name":"EmailGuardianAdded","type":"event"},{"anonymous":false,"inputs":[],"name":"EmailGuardianRemoved","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint8","name":"version","type":"uint8"}],"name":"Initialized","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"contract IEntryPoint","name":"entryPoint","type":"address"},{"indexed":false,"internalType":"contract ISecp256r1","name":"validator","type":"address"},{"indexed":false,"internalType":"contract EmailGuardian","name":"guardian","type":"address"},{"indexed":false,"internalType":"bytes","name":"publicKey","type":"bytes"}],"name":"P256AccountInitialized","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"implementation","type":"address"}],"name":"Upgraded","type":"event"},{"inputs":[],"name":"addDeposit","outputs":[],"stateMutability":"payable","type":"function"},{"inputs":[{"internalType":"bytes32","name":"_email","type":"bytes32"},{"internalType":"bytes","name":"_signature","type":"bytes"}],"name":"addEmailGuardian","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"entryPoint","outputs":[{"internalType":"contract IEntryPoint","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"dest","type":"address"},{"internalType":"uint256","name":"value","type":"uint256"},{"internalType":"bytes","name":"func","type":"bytes"}],"name":"execute","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address[]","name":"dest","type":"address[]"},{"internalType":"uint256[]","name":"values","type":"uint256[]"},{"internalType":"bytes[]","name":"func","type":"bytes[]"}],"name":"executeBatch","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"getDeposit","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getNonce","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"bytes","name":"_publicKey","type":"bytes"}],"name":"initialize","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"","type":"address"},{"internalType":"address","name":"","type":"address"},{"internalType":"uint256[]","name":"","type":"uint256[]"},{"internalType":"uint256[]","name":"","type":"uint256[]"},{"internalType":"bytes","name":"","type":"bytes"}],"name":"onERC1155BatchReceived","outputs":[{"internalType":"bytes4","name":"","type":"bytes4"}],"stateMutability":"pure","type":"function"},{"inputs":[{"internalType":"address","name":"","type":"address"},{"internalType":"address","name":"","type":"address"},{"internalType":"uint256","name":"","type":"uint256"},{"internalType":"uint256","name":"","type":"uint256"},{"internalType":"bytes","name":"","type":"bytes"}],"name":"onERC1155Received","outputs":[{"internalType":"bytes4","name":"","type":"bytes4"}],"stateMutability":"pure","type":"function"},{"inputs":[{"internalType":"address","name":"","type":"address"},{"internalType":"address","name":"","type":"address"},{"internalType":"uint256","name":"","type":"uint256"},{"internalType":"bytes","name":"","type":"bytes"}],"name":"onERC721Received","outputs":[{"internalType":"bytes4","name":"","type":"bytes4"}],"stateMutability":"pure","type":"function"},{"inputs":[],"name":"pendingPublicKey","outputs":[{"internalType":"uint256","name":"timestamp","type":"uint256"},{"internalType":"bytes","name":"publicKey","type":"bytes"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"bytes32","name":"server","type":"bytes32"},{"internalType":"bytes","name":"data","type":"bytes"},{"internalType":"bytes","name":"signature","type":"bytes"},{"internalType":"bytes","name":"pubkey","type":"bytes"}],"name":"pendingRecovery","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"proxiableUUID","outputs":[{"internalType":"bytes32","name":"","type":"bytes32"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"publicKey","outputs":[{"internalType":"bytes","name":"","type":"bytes"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"recovery","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"removeEmailGuardian","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"bytes","name":"pubkey","type":"bytes"}],"name":"resetPublicKey","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"stopRecovery","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"bytes4","name":"interfaceId","type":"bytes4"}],"name":"supportsInterface","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"","type":"address"},{"internalType":"address","name":"","type":"address"},{"internalType":"address","name":"","type":"address"},{"internalType":"uint256","name":"","type":"uint256"},{"internalType":"bytes","name":"","type":"bytes"},{"internalType":"bytes","name":"","type":"bytes"}],"name":"tokensReceived","outputs":[],"stateMutability":"pure","type":"function"},{"inputs":[{"internalType":"address","name":"newImplementation","type":"address"}],"name":"upgradeTo","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"newImplementation","type":"address"},{"internalType":"bytes","name":"data","type":"bytes"}],"name":"upgradeToAndCall","outputs":[],"stateMutability":"payable","type":"function"},{"inputs":[{"components":[{"internalType":"address","name":"sender","type":"address"},{"internalType":"uint256","name":"nonce","type":"uint256"},{"internalType":"bytes","name":"initCode","type":"bytes"},{"internalType":"bytes","name":"callData","type":"bytes"},{"internalType":"uint256","name":"callGasLimit","type":"uint256"},{"internalType":"uint256","name":"verificationGasLimit","type":"uint256"},{"internalType":"uint256","name":"preVerificationGas","type":"uint256"},{"internalType":"uint256","name":"maxFeePerGas","type":"uint256"},{"internalType":"uint256","name":"maxPriorityFeePerGas","type":"uint256"},{"internalType":"bytes","name":"paymasterAndData","type":"bytes"},{"internalType":"bytes","name":"signature","type":"bytes"}],"internalType":"struct UserOperation","name":"userOp","type":"tuple"},{"internalType":"bytes32","name":"userOpHash","type":"bytes32"},{"internalType":"uint256","name":"missingAccountFunds","type":"uint256"}],"name":"validateUserOp","outputs":[{"internalType":"uint256","name":"validationData","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address payable","name":"withdrawAddress","type":"address"},{"internalType":"uint256","name":"amount","type":"uint256"}],"name":"withdrawDepositTo","outputs":[],"stateMutability":"nonpayable","type":"function"},{"stateMutability":"payable","type":"receive"}]
    """

    public static let p256AccountFactory = """
    [{"inputs":[{"internalType":"contract IEntryPoint","name":"_entryPoint","type":"address"},{"internalType":"contract ISecp256r1","name":"_validator","type":"address"},{"internalType":"contract EmailGuardian","name":"_guardian","type":"address"}],"stateMutability":"nonpayable","type":"constructor"},{"inputs":[],"name":"accountImplementation","outputs":[{"internalType":"contract P256Account","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"bytes","name":"publicKey","type":"bytes"},{"internalType":"uint256","name":"salt","type":"uint256"}],"name":"createAccount","outputs":[{"internalType":"contract P256Account","name":"ret","type":"address"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"bytes","name":"publicKey","type":"bytes"},{"internalType":"uint256","name":"salt","type":"uint256"}],"name":"getAddress","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"}]
    """

    public static let entryPoint = """
    [{"inputs":[{"internalType":"uint256","name":"preOpGas","type":"uint256"},{"internalType":"uint256","name":"paid","type":"uint256"},{"internalType":"uint48","name":"validAfter","type":"uint48"},{"internalType":"uint48","name":"validUntil","type":"uint48"},{"internalType":"bool","name":"targetSuccess","type":"bool"},{"internalType":"bytes","name":"targetResult","type":"bytes"}],"name":"ExecutionResult","type":"error"},{"inputs":[{"internalType":"uint256","name":"opIndex","type":"uint256"},{"internalType":"string","name":"reason","type":"string"}],"name":"FailedOp","type":"error"},{"inputs":[{"internalType":"address","name":"sender","type":"address"}],"name":"SenderAddressResult","type":"error"},{"inputs":[{"internalType":"address","name":"aggregator","type":"address"}],"name":"SignatureValidationFailed","type":"error"},{"inputs":[{"components":[{"internalType":"uint256","name":"preOpGas","type":"uint256"},{"internalType":"uint256","name":"prefund","type":"uint256"},{"internalType":"bool","name":"sigFailed","type":"bool"},{"internalType":"uint48","name":"validAfter","type":"uint48"},{"internalType":"uint48","name":"validUntil","type":"uint48"},{"internalType":"bytes","name":"paymasterContext","type":"bytes"}],"internalType":"struct IEntryPoint.ReturnInfo","name":"returnInfo","type":"tuple"},{"components":[{"internalType":"uint256","name":"stake","type":"uint256"},{"internalType":"uint256","name":"unstakeDelaySec","type":"uint256"}],"internalType":"struct IStakeManager.StakeInfo","name":"senderInfo","type":"tuple"},{"components":[{"internalType":"uint256","name":"stake","type":"uint256"},{"internalType":"uint256","name":"unstakeDelaySec","type":"uint256"}],"internalType":"struct IStakeManager.StakeInfo","name":"factoryInfo","type":"tuple"},{"components":[{"internalType":"uint256","name":"stake","type":"uint256"},{"internalType":"uint256","name":"unstakeDelaySec","type":"uint256"}],"internalType":"struct IStakeManager.StakeInfo","name":"paymasterInfo","type":"tuple"}],"name":"ValidationResult","type":"error"},{"inputs":[{"components":[{"internalType":"uint256","name":"preOpGas","type":"uint256"},{"internalType":"uint256","name":"prefund","type":"uint256"},{"internalType":"bool","name":"sigFailed","type":"bool"},{"internalType":"uint48","name":"validAfter","type":"uint48"},{"internalType":"uint48","name":"validUntil","type":"uint48"},{"internalType":"bytes","name":"paymasterContext","type":"bytes"}],"internalType":"struct IEntryPoint.ReturnInfo","name":"returnInfo","type":"tuple"},{"components":[{"internalType":"uint256","name":"stake","type":"uint256"},{"internalType":"uint256","name":"unstakeDelaySec","type":"uint256"}],"internalType":"struct IStakeManager.StakeInfo","name":"senderInfo","type":"tuple"},{"components":[{"internalType":"uint256","name":"stake","type":"uint256"},{"internalType":"uint256","name":"unstakeDelaySec","type":"uint256"}],"internalType":"struct IStakeManager.StakeInfo","name":"factoryInfo","type":"tuple"},{"components":[{"internalType":"uint256","name":"stake","type":"uint256"},{"internalType":"uint256","name":"unstakeDelaySec","type":"uint256"}],"internalType":"struct IStakeManager.StakeInfo","name":"paymasterInfo","type":"tuple"},{"components":[{"internalType":"address","name":"aggregator","type":"address"},{"components":[{"internalType":"uint256","name":"stake","type":"uint256"},{"internalType":"uint256","name":"unstakeDelaySec","type":"uint256"}],"internalType":"struct IStakeManager.StakeInfo","name":"stakeInfo","type":"tuple"}],"internalType":"struct IEntryPoint.AggregatorStakeInfo","name":"aggregatorInfo","type":"tuple"}],"name":"ValidationResultWithAggregation","type":"error"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"bytes32","name":"userOpHash","type":"bytes32"},{"indexed":true,"internalType":"address","name":"sender","type":"address"},{"indexed":false,"internalType":"address","name":"factory","type":"address"},{"indexed":false,"internalType":"address","name":"paymaster","type":"address"}],"name":"AccountDeployed","type":"event"},{"anonymous":false,"inputs":[],"name":"BeforeExecution","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"account","type":"address"},{"indexed":false,"internalType":"uint256","name":"totalDeposit","type":"uint256"}],"name":"Deposited","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"aggregator","type":"address"}],"name":"SignatureAggregatorChanged","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"account","type":"address"},{"indexed":false,"internalType":"uint256","name":"totalStaked","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"unstakeDelaySec","type":"uint256"}],"name":"StakeLocked","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"account","type":"address"},{"indexed":false,"internalType":"uint256","name":"withdrawTime","type":"uint256"}],"name":"StakeUnlocked","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"account","type":"address"},{"indexed":false,"internalType":"address","name":"withdrawAddress","type":"address"},{"indexed":false,"internalType":"uint256","name":"amount","type":"uint256"}],"name":"StakeWithdrawn","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"bytes32","name":"userOpHash","type":"bytes32"},{"indexed":true,"internalType":"address","name":"sender","type":"address"},{"indexed":true,"internalType":"address","name":"paymaster","type":"address"},{"indexed":false,"internalType":"uint256","name":"nonce","type":"uint256"},{"indexed":false,"internalType":"bool","name":"success","type":"bool"},{"indexed":false,"internalType":"uint256","name":"actualGasCost","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"actualGasUsed","type":"uint256"}],"name":"UserOperationEvent","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"bytes32","name":"userOpHash","type":"bytes32"},{"indexed":true,"internalType":"address","name":"sender","type":"address"},{"indexed":false,"internalType":"uint256","name":"nonce","type":"uint256"},{"indexed":false,"internalType":"bytes","name":"revertReason","type":"bytes"}],"name":"UserOperationRevertReason","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"account","type":"address"},{"indexed":false,"internalType":"address","name":"withdrawAddress","type":"address"},{"indexed":false,"internalType":"uint256","name":"amount","type":"uint256"}],"name":"Withdrawn","type":"event"},{"inputs":[],"name":"SIG_VALIDATION_FAILED","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"bytes","name":"initCode","type":"bytes"},{"internalType":"address","name":"sender","type":"address"},{"internalType":"bytes","name":"paymasterAndData","type":"bytes"}],"name":"_validateSenderAndPaymaster","outputs":[],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint32","name":"unstakeDelaySec","type":"uint32"}],"name":"addStake","outputs":[],"stateMutability":"payable","type":"function"},{"inputs":[{"internalType":"address","name":"account","type":"address"}],"name":"balanceOf","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"account","type":"address"}],"name":"depositTo","outputs":[],"stateMutability":"payable","type":"function"},{"inputs":[{"internalType":"address","name":"","type":"address"}],"name":"deposits","outputs":[{"internalType":"uint112","name":"deposit","type":"uint112"},{"internalType":"bool","name":"staked","type":"bool"},{"internalType":"uint112","name":"stake","type":"uint112"},{"internalType":"uint32","name":"unstakeDelaySec","type":"uint32"},{"internalType":"uint48","name":"withdrawTime","type":"uint48"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"account","type":"address"}],"name":"getDepositInfo","outputs":[{"components":[{"internalType":"uint112","name":"deposit","type":"uint112"},{"internalType":"bool","name":"staked","type":"bool"},{"internalType":"uint112","name":"stake","type":"uint112"},{"internalType":"uint32","name":"unstakeDelaySec","type":"uint32"},{"internalType":"uint48","name":"withdrawTime","type":"uint48"}],"internalType":"struct IStakeManager.DepositInfo","name":"info","type":"tuple"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"sender","type":"address"},{"internalType":"uint192","name":"key","type":"uint192"}],"name":"getNonce","outputs":[{"internalType":"uint256","name":"nonce","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"bytes","name":"initCode","type":"bytes"}],"name":"getSenderAddress","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"components":[{"internalType":"address","name":"sender","type":"address"},{"internalType":"uint256","name":"nonce","type":"uint256"},{"internalType":"bytes","name":"initCode","type":"bytes"},{"internalType":"bytes","name":"callData","type":"bytes"},{"internalType":"uint256","name":"callGasLimit","type":"uint256"},{"internalType":"uint256","name":"verificationGasLimit","type":"uint256"},{"internalType":"uint256","name":"preVerificationGas","type":"uint256"},{"internalType":"uint256","name":"maxFeePerGas","type":"uint256"},{"internalType":"uint256","name":"maxPriorityFeePerGas","type":"uint256"},{"internalType":"bytes","name":"paymasterAndData","type":"bytes"},{"internalType":"bytes","name":"signature","type":"bytes"}],"internalType":"struct UserOperation","name":"userOp","type":"tuple"}],"name":"getUserOpHash","outputs":[{"internalType":"bytes32","name":"","type":"bytes32"}],"stateMutability":"view","type":"function"},{"inputs":[{"components":[{"components":[{"internalType":"address","name":"sender","type":"address"},{"internalType":"uint256","name":"nonce","type":"uint256"},{"internalType":"bytes","name":"initCode","type":"bytes"},{"internalType":"bytes","name":"callData","type":"bytes"},{"internalType":"uint256","name":"callGasLimit","type":"uint256"},{"internalType":"uint256","name":"verificationGasLimit","type":"uint256"},{"internalType":"uint256","name":"preVerificationGas","type":"uint256"},{"internalType":"uint256","name":"maxFeePerGas","type":"uint256"},{"internalType":"uint256","name":"maxPriorityFeePerGas","type":"uint256"},{"internalType":"bytes","name":"paymasterAndData","type":"bytes"},{"internalType":"bytes","name":"signature","type":"bytes"}],"internalType":"struct UserOperation[]","name":"userOps","type":"tuple[]"},{"internalType":"contract IAggregator","name":"aggregator","type":"address"},{"internalType":"bytes","name":"signature","type":"bytes"}],"internalType":"struct IEntryPoint.UserOpsPerAggregator[]","name":"opsPerAggregator","type":"tuple[]"},{"internalType":"address payable","name":"beneficiary","type":"address"}],"name":"handleAggregatedOps","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"components":[{"internalType":"address","name":"sender","type":"address"},{"internalType":"uint256","name":"nonce","type":"uint256"},{"internalType":"bytes","name":"initCode","type":"bytes"},{"internalType":"bytes","name":"callData","type":"bytes"},{"internalType":"uint256","name":"callGasLimit","type":"uint256"},{"internalType":"uint256","name":"verificationGasLimit","type":"uint256"},{"internalType":"uint256","name":"preVerificationGas","type":"uint256"},{"internalType":"uint256","name":"maxFeePerGas","type":"uint256"},{"internalType":"uint256","name":"maxPriorityFeePerGas","type":"uint256"},{"internalType":"bytes","name":"paymasterAndData","type":"bytes"},{"internalType":"bytes","name":"signature","type":"bytes"}],"internalType":"struct UserOperation[]","name":"ops","type":"tuple[]"},{"internalType":"address payable","name":"beneficiary","type":"address"}],"name":"handleOps","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint192","name":"key","type":"uint192"}],"name":"incrementNonce","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"bytes","name":"callData","type":"bytes"},{"components":[{"components":[{"internalType":"address","name":"sender","type":"address"},{"internalType":"uint256","name":"nonce","type":"uint256"},{"internalType":"uint256","name":"callGasLimit","type":"uint256"},{"internalType":"uint256","name":"verificationGasLimit","type":"uint256"},{"internalType":"uint256","name":"preVerificationGas","type":"uint256"},{"internalType":"address","name":"paymaster","type":"address"},{"internalType":"uint256","name":"maxFeePerGas","type":"uint256"},{"internalType":"uint256","name":"maxPriorityFeePerGas","type":"uint256"}],"internalType":"struct EntryPoint.MemoryUserOp","name":"mUserOp","type":"tuple"},{"internalType":"bytes32","name":"userOpHash","type":"bytes32"},{"internalType":"uint256","name":"prefund","type":"uint256"},{"internalType":"uint256","name":"contextOffset","type":"uint256"},{"internalType":"uint256","name":"preOpGas","type":"uint256"}],"internalType":"struct EntryPoint.UserOpInfo","name":"opInfo","type":"tuple"},{"internalType":"bytes","name":"context","type":"bytes"}],"name":"innerHandleOp","outputs":[{"internalType":"uint256","name":"actualGasCost","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"","type":"address"},{"internalType":"uint192","name":"","type":"uint192"}],"name":"nonceSequenceNumber","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"components":[{"internalType":"address","name":"sender","type":"address"},{"internalType":"uint256","name":"nonce","type":"uint256"},{"internalType":"bytes","name":"initCode","type":"bytes"},{"internalType":"bytes","name":"callData","type":"bytes"},{"internalType":"uint256","name":"callGasLimit","type":"uint256"},{"internalType":"uint256","name":"verificationGasLimit","type":"uint256"},{"internalType":"uint256","name":"preVerificationGas","type":"uint256"},{"internalType":"uint256","name":"maxFeePerGas","type":"uint256"},{"internalType":"uint256","name":"maxPriorityFeePerGas","type":"uint256"},{"internalType":"bytes","name":"paymasterAndData","type":"bytes"},{"internalType":"bytes","name":"signature","type":"bytes"}],"internalType":"struct UserOperation","name":"op","type":"tuple"},{"internalType":"address","name":"target","type":"address"},{"internalType":"bytes","name":"targetCallData","type":"bytes"}],"name":"simulateHandleOp","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"components":[{"internalType":"address","name":"sender","type":"address"},{"internalType":"uint256","name":"nonce","type":"uint256"},{"internalType":"bytes","name":"initCode","type":"bytes"},{"internalType":"bytes","name":"callData","type":"bytes"},{"internalType":"uint256","name":"callGasLimit","type":"uint256"},{"internalType":"uint256","name":"verificationGasLimit","type":"uint256"},{"internalType":"uint256","name":"preVerificationGas","type":"uint256"},{"internalType":"uint256","name":"maxFeePerGas","type":"uint256"},{"internalType":"uint256","name":"maxPriorityFeePerGas","type":"uint256"},{"internalType":"bytes","name":"paymasterAndData","type":"bytes"},{"internalType":"bytes","name":"signature","type":"bytes"}],"internalType":"struct UserOperation","name":"userOp","type":"tuple"}],"name":"simulateValidation","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"unlockStake","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address payable","name":"withdrawAddress","type":"address"}],"name":"withdrawStake","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address payable","name":"withdrawAddress","type":"address"},{"internalType":"uint256","name":"withdrawAmount","type":"uint256"}],"name":"withdrawTo","outputs":[],"stateMutability":"nonpayable","type":"function"},{"stateMutability":"payable","type":"receive"}]
    """
    public static let erc20 = """
        [
           {
              "constant":true,
              "inputs":[

              ],
              "name":"name",
              "outputs":[
                 {
                    "name":"",
                    "type":"string"
                 }
              ],
              "payable":false,
              "stateMutability":"view",
              "type":"function"
           },
           {
              "constant":false,
              "inputs":[
                 {
                    "name":"spender",
                    "type":"address"
                 },
                 {
                    "name":"tokens",
                    "type":"uint256"
                 }
              ],
              "name":"approve",
              "outputs":[
                 {
                    "name":"success",
                    "type":"bool"
                 }
              ],
              "payable":false,
              "stateMutability":"nonpayable",
              "type":"function"
           },
           {
              "constant":true,
              "inputs":[

              ],
              "name":"totalSupply",
              "outputs":[
                 {
                    "name":"",
                    "type":"uint256"
                 }
              ],
              "payable":false,
              "stateMutability":"view",
              "type":"function"
           },
           {
              "constant":false,
              "inputs":[
                 {
                    "name":"from",
                    "type":"address"
                 },
                 {
                    "name":"to",
                    "type":"address"
                 },
                 {
                    "name":"tokens",
                    "type":"uint256"
                 }
              ],
              "name":"transferFrom",
              "outputs":[
                 {
                    "name":"success",
                    "type":"bool"
                 }
              ],
              "payable":false,
              "stateMutability":"nonpayable",
              "type":"function"
           },
           {
              "constant":true,
              "inputs":[

              ],
              "name":"decimals",
              "outputs":[
                 {
                    "name":"",
                    "type":"uint8"
                 }
              ],
              "payable":false,
              "stateMutability":"view",
              "type":"function"
           },
           {
              "constant":false,
              "inputs":[
                 {
                    "name":"amount",
                    "type":"uint256"
                 }
              ],
              "name":"withdrawEther",
              "outputs":[

              ],
              "payable":false,
              "stateMutability":"nonpayable",
              "type":"function"
           },
           {
              "constant":true,
              "inputs":[

              ],
              "name":"_totalSupply",
              "outputs":[
                 {
                    "name":"",
                    "type":"uint256"
                 }
              ],
              "payable":false,
              "stateMutability":"view",
              "type":"function"
           },
           {
              "constant":true,
              "inputs":[
                 {
                    "name":"tokenOwner",
                    "type":"address"
                 }
              ],
              "name":"balanceOf",
              "outputs":[
                 {
                    "name":"balance",
                    "type":"uint256"
                 }
              ],
              "payable":false,
              "stateMutability":"view",
              "type":"function"
           },
           {
              "constant":false,
              "inputs":[

              ],
              "name":"acceptOwnership",
              "outputs":[

              ],
              "payable":false,
              "stateMutability":"nonpayable",
              "type":"function"
           },
           {
              "constant":true,
              "inputs":[

              ],
              "name":"owner",
              "outputs":[
                 {
                    "name":"",
                    "type":"address"
                 }
              ],
              "payable":false,
              "stateMutability":"view",
              "type":"function"
           },
           {
              "constant":true,
              "inputs":[

              ],
              "name":"symbol",
              "outputs":[
                 {
                    "name":"",
                    "type":"string"
                 }
              ],
              "payable":false,
              "stateMutability":"view",
              "type":"function"
           },
           {
              "constant":true,
              "inputs":[
                 {
                    "name":"a",
                    "type":"uint256"
                 },
                 {
                    "name":"b",
                    "type":"uint256"
                 }
              ],
              "name":"safeSub",
              "outputs":[
                 {
                    "name":"c",
                    "type":"uint256"
                 }
              ],
              "payable":false,
              "stateMutability":"pure",
              "type":"function"
           },
           {
              "constant":false,
              "inputs":[
                 {
                    "name":"to",
                    "type":"address"
                 },
                 {
                    "name":"tokens",
                    "type":"uint256"
                 }
              ],
              "name":"transfer",
              "outputs":[
                 {
                    "name":"success",
                    "type":"bool"
                 }
              ],
              "payable":false,
              "stateMutability":"nonpayable",
              "type":"function"
           },
           {
              "constant":true,
              "inputs":[
                 {
                    "name":"a",
                    "type":"uint256"
                 },
                 {
                    "name":"b",
                    "type":"uint256"
                 }
              ],
              "name":"safeDiv",
              "outputs":[
                 {
                    "name":"c",
                    "type":"uint256"
                 }
              ],
              "payable":false,
              "stateMutability":"pure",
              "type":"function"
           },
           {
              "constant":false,
              "inputs":[
                 {
                    "name":"spender",
                    "type":"address"
                 },
                 {
                    "name":"tokens",
                    "type":"uint256"
                 },
                 {
                    "name":"data",
                    "type":"bytes"
                 }
              ],
              "name":"approveAndCall",
              "outputs":[
                 {
                    "name":"success",
                    "type":"bool"
                 }
              ],
              "payable":false,
              "stateMutability":"nonpayable",
              "type":"function"
           },
           {
              "constant":true,
              "inputs":[
                 {
                    "name":"a",
                    "type":"uint256"
                 },
                 {
                    "name":"b",
                    "type":"uint256"
                 }
              ],
              "name":"safeMul",
              "outputs":[
                 {
                    "name":"c",
                    "type":"uint256"
                 }
              ],
              "payable":false,
              "stateMutability":"pure",
              "type":"function"
           },
           {
              "constant":true,
              "inputs":[

              ],
              "name":"newOwner",
              "outputs":[
                 {
                    "name":"",
                    "type":"address"
                 }
              ],
              "payable":false,
              "stateMutability":"view",
              "type":"function"
           },
           {
              "constant":false,
              "inputs":[
                 {
                    "name":"tokenAddress",
                    "type":"address"
                 },
                 {
                    "name":"tokens",
                    "type":"uint256"
                 }
              ],
              "name":"transferAnyERC20Token",
              "outputs":[
                 {
                    "name":"success",
                    "type":"bool"
                 }
              ],
              "payable":false,
              "stateMutability":"nonpayable",
              "type":"function"
           },
           {
              "constant":true,
              "inputs":[
                 {
                    "name":"tokenOwner",
                    "type":"address"
                 },
                 {
                    "name":"spender",
                    "type":"address"
                 }
              ],
              "name":"allowance",
              "outputs":[
                 {
                    "name":"remaining",
                    "type":"uint256"
                 }
              ],
              "payable":false,
              "stateMutability":"view",
              "type":"function"
           },
           {
              "constant":true,
              "inputs":[
                 {
                    "name":"a",
                    "type":"uint256"
                 },
                 {
                    "name":"b",
                    "type":"uint256"
                 }
              ],
              "name":"safeAdd",
              "outputs":[
                 {
                    "name":"c",
                    "type":"uint256"
                 }
              ],
              "payable":false,
              "stateMutability":"pure",
              "type":"function"
           },
           {
              "constant":false,
              "inputs":[
                 {
                    "name":"_newOwner",
                    "type":"address"
                 }
              ],
              "name":"transferOwnership",
              "outputs":[

              ],
              "payable":false,
              "stateMutability":"nonpayable",
              "type":"function"
           },
           {
              "inputs":[

              ],
              "payable":false,
              "stateMutability":"nonpayable",
              "type":"constructor"
           },
           {
              "payable":true,
              "stateMutability":"payable",
              "type":"fallback"
           },
           {
              "anonymous":false,
              "inputs":[
                 {
                    "indexed":true,
                    "name":"_from",
                    "type":"address"
                 },
                 {
                    "indexed":true,
                    "name":"_to",
                    "type":"address"
                 }
              ],
              "name":"OwnershipTransferred",
              "type":"event"
           },
           {
              "anonymous":false,
              "inputs":[
                 {
                    "indexed":true,
                    "name":"from",
                    "type":"address"
                 },
                 {
                    "indexed":true,
                    "name":"to",
                    "type":"address"
                 },
                 {
                    "indexed":false,
                    "name":"tokens",
                    "type":"uint256"
                 }
              ],
              "name":"Transfer",
              "type":"event"
           },
           {
              "anonymous":false,
              "inputs":[
                 {
                    "indexed":true,
                    "name":"tokenOwner",
                    "type":"address"
                 },
                 {
                    "indexed":true,
                    "name":"spender",
                    "type":"address"
                 },
                 {
                    "indexed":false,
                    "name":"tokens",
                    "type":"uint256"
                 }
              ],
              "name":"Approval",
              "type":"event"
           }
        ]
        """
}

