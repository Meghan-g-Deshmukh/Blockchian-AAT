Blockchian-AAT

# Team Chain_Squid
Meghana G Deshmukh – 1DS22CY025
Mounika T – 1DS22CY029
Parvati Waladunki – 1DS22CY032
Puneetha G – 1DS23CY40

Carbon Credit Trading Platform
A decentralized blockchain-based platform that enables transparent, secure, and efficient carbon credit trading using Ethereum smart contracts

Overview
Traditional carbon credit systems are plagued by inefficiencies, lack of transparency, and susceptibility to fraud. Our project, built with Solidity on the Ethereum blockchain, solves these challenges by providing a decentralized system where:
A regulatory authority can register and issue credits to companies
Registered companies can trade carbon credits with one another
All transactions are transparent, immutable, and traceable on-chain

Objectives
Register companies through a regulatory authority
Issue carbon credits based on environmental performance
Allow peer-to-peer carbon credit trading
Enable real-time, immutable credit tracking and auditing

Blockchain Integration
This platform leverages Ethereum’s blockchain for:
Transparency: All transactions and credit allocations are recorded on-chain
Security: Only registered and authorized users can execute actions
Automation: Smart contracts enforce business logic without intermediaries
Decentralization: Reduces the risk of central authority misuse
Auditability: Full history of credit flows is publicly accessible

Smart Contract Features
registerCompany(address, name) – Regulator registers a new company
issueCredits(address, amount) – Regulator issues carbon credits
transferCredits(to, amount) – Companies transfer credits among themselves
getMyCredits() – Companies view their own credits
getCompanyCredits(address) – View any registered company’s credit balance
