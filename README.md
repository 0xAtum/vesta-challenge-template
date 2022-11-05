## Dependencies

- [Foundry/Forge](https://github.com/gakonst/foundry) : Allows you to do
  native unit tests (in solidity).

## Installation

1. [Follow the Foundry's installation guide](https://book.getfoundry.sh/getting-started/installation.html)
2. `forge install`

Then use the command `make test` to be sure everything is good to go

## Short Forge Tutorial

[Foundry Book](https://book.getfoundry.sh/index.html)

You want to install a library?

1. `forge install openZeppelin/openzeppelin-contracts`
2. `make remappings` or `forge remappings > remappings.txt`

You want to run some tests?

- `forge test` // normal
- `forge test -vv` // debug
- `forge test -vvv` //tracing

## Coverage

Coverage isn't production ready, but still quite a nice tool to use.
If you want to use it correctly, install

- Coverage Gutter Extension (vscode)

Then when you run `make coverage`, it will generate a file that Coverage Gutter will read. Go to your contract's code and use the vscode command `>Coverage Gutters: Display Coverage`

You will see in red the code that isn't being tested by your tests.

## Commands script

I'm using
[MakeFile](https://github.com/0xAtum/template-solidity-project/blob/main/Makefile)
for the commands.

e.g: `make test`
e.g (with args): `make test EXTRA='-vvv --match-contract MyContractTest'`

## License

[AGPL-3.0-only](https://github.com/0xAtum/template-solidity-project/blob/main/LICENSE)
