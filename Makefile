# include .env file and export its env vars
# (-include to ignore error if it does not exist)
-include .env

FORK_MAINNET_RPC =  --fork-url https://mainnet.infura.io/v3/9aa3d95b3bc440fa88ea12eaa4456161
FORGE_CLEAN = forge fmt && forge clean

# How to use $(EXTRA) or $(NETWORK)
# define it with your command. 
# e.g: make test EXTRA='-vvv --match-contract MyContractTest'
# e.g: make deploy-testnet NETWORK='arbitrumTestnet'

# deps
update:; forge update
remappings:; forge remappings > remappings.txt

# commands
coverage :; forge coverage 
coverage-output :; forge coverage --report lcov
build  :; $(FORGE_CLEAN) && forge build 
clean  :; $(FORGE_CLEAN)

# test
test   :; $(FORGE_CLEAN) && forge test $(EXTRA)

# Gas Snapshots
snapshot :; $(FORGE_CLEAN) && forge snapshot $(EXTRA)
snapshot-fork :; $(FORGE_CLEAN) && forge snapshot --snap .gas-snapshot-fork $(FORK_MAINNET_RPC) $(EXTRA)