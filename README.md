
# Fabulous Token (FAB)

A customized ERC-20 token built with Solidity and OpenZeppelin, using Foundry for development, testing, and deployment.

## Token Information

- **Token Name:** Fabulous Token
- **Token Symbol:** FAB
- **Initial Supply:** 1,000,000 FAB
- **Decimals:** 18
- **Network:** Ethereum Sepolia Testnet
- **Contract Address:** `0x8128C8C17220CC3237013a60887C52ef7235C21e`

### View the Deployed Contract

[View Fabulous Token on Sepolia Etherscan](https://sepolia.etherscan.io/address/0x8128C8C17220CC3237013a60887C52ef7235C21e)

[View Deployment Transaction](https://sepolia.etherscan.io/tx/0x4fc8a75bdb1d8e4d87b2e629a6419fc3b561f5fd248000d75ea2b68b55a716e4)

## Features

- ERC-20 standard token functionality
- Initial supply minted to the deployer's wallet
- Owner-only token minting
- Token burning
- Owner-controlled pause and unpause functionality
- Tests for transfers, minting, burning, and pausing

## Technologies Used

- Solidity
- Foundry (Forge, Cast, and Anvil)
- OpenZeppelin Contracts
- Ethereum Sepolia Testnet

## Prerequisites

Install Foundry and Git before setting up the project.

## Installation

Clone the repository:

```bash
git clone https://github.com/fabulous001/fabulous-token.git
cd fabulous-token
```

Install the dependencies:

```bash
forge install foundry-rs/forge-std --no-git
forge install OpenZeppelin/openzeppelin-contracts --no-git
```

Build the project:

```bash
forge build
```

## Running Tests

Run all tests:

```bash
forge test -vv
```

The project has passed 9 tests, with 0 failures and 0 skipped tests in the recorded test run.

The FabulousToken test suite covers initial supply, owner-only minting, burning, transfers, and pause/unpause functionality.

## Deployment

To deploy your own instance to Sepolia, configure your Sepolia RPC URL and private key locally in a `.env` file. Never commit your `.env` file or share your private key.

Load the environment variables:

```bash
source .env
```

Deploy using Foundry:

```bash
forge script script/DeployFabulousToken.s.sol:DeployFabulousToken --rpc-url "$SEPOLIA_RPC_URL" --broadcast --private-key "$PRIVATE_KEY"
```

Ensure your wallet has enough Sepolia test ETH for gas and that your RPC URL is valid before deploying.

**Note:** The contract address above is the address of the instance already deployed for this project. Deploying again will create a different contract address.

## Security Notes

- Never publish your wallet's private key or recovery phrase.
- Keep `.env` out of Git.
- This project is deployed on a test network and its tokens have no guaranteed monetary value.
