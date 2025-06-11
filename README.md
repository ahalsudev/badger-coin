## Foundry-enabled BadgerCoin

### Dependencies

```shell
$ forge install OpenZeppelin/openzeppelin-contracts
```

### Deployment
```shell
$ forge create src/BadgerCoin.sol:BadgerCoin --rpc-url http://127.0.0.1:8545 --unlocked --from 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 --broadcast

$ forge create src/BadgerCoin.sol:BadgerCoin --rpc-url https://eth-sepolia.g.alchemy.com/v2/$API_KEY --from 0x0dDF8cb6B43A54897061cb1A762E8120620b46d6 --private-key $PRIVATE_KEY --broadcast

Deployer: 0x0dDF8cb6B43A54897061cb1A762E8120620b46d6
Deployed to: 0x1BEb6c94492FF4A194c473F97C9C5c4874e678a0
Transaction hash: 0x033b692d976ff5a0cf2e92d9f9a90c2473cbd8803e647956082e581a9f7cc506
```

### Test Transactions
```
$ cast call 0x5FbDB2315678afecb367f032d93F642f64180aa3 "totalSupply()(uint256)" --rpc-url http://127.0.0.1:8545

$ cast call 0x5FbDB2315678afecb367f032d93F642f64180aa3 "balanceOf(address)" 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 --rpc-url http://127.0.0.1:8545

$ cast send 0x5FbDB2315678afecb367f032d93F642f64180aa3 "transfer(address,uint256)" 0x70997970C51812dc3A010C7d01b50e0d17dc79C8 10000 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --rpc-url http://127.0.0.1:8545
```

### Contract Address
```
Deployer: 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266
Deployed to: 0x5FbDB2315678afecb367f032d93F642f64180aa3
Transaction hash: 0x4a96f154e2db224638902ac46b59d72e2a8873d252f2300fac9fad9dbdb1012c
```

### Block Explorer
```
docker run --rm -p 5100:80 --name otterscan -d otterscan/otterscan
```
