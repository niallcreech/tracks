# blockchain-developer-bootcamp-final-project

## Contents

* [Introduction](#introduction)
* [Where to find it](#where-to-find-it)
* [Development and testing](#development-and-testing)
* [File structure](#file-structure)
* [Design Pattern Decisions](./design_pattern_decisions.md)
* [Avoiding Common Attacks](./avoiding_common_attacks.md)
* [Deployed Addresses](./deployed_addresses.md)
* [Screencast](./media/Screencast.mp4)/[Screencast 2x](./media/Screencast2x.mp4)
* [TODO](./TODO.md)

## Introduction

Tracks is an app that gives you the ability to post topics to the ethereum blockchain, 
which everyone can then add links to their favourite sites that they think others
will enjoy. Everyone can vote for their favourite links and organise the chaos!




## Where to find it

* [Tracks Website](https://r7ph4-kaaaa-aaaad-qaw6a-cai.ic.fleek.co)
* [Rinkeby Address](https://rinkeby.etherscan.io/address/0x7C0743Bd57B107443c2DF8420E0265E6D0eEf607)


## File structure

```
|- client               X Core base for the client application
|  |- node_modules      X NodeJS libraries for client
|  |- public            X Static web content
|  |- src               X React code base root
|    |- components      X React components and tests
|    |- contracts       X Imported Tracks contract code
|    |- helpers         X Helper libraries for componensts
|- contracts            X Tracks contract code
|- docgen               X Autogenerated contract documentation
|- media                X Images and screencasts
|- migrations           X Truffle migration tracking 
|- node_modules         X NodeJS libraries for truffle
|- scripts              X Scripts to, 'bootstrap' the environment, 'test' contract and client, and start a 'server'. 
|- test                 X Contract tests using Jest for Truffle
```

## Development and testing

Truffle and ganache have been used for application development. See [the Truffle website](XXX)
for installation instructions for your platform. The application can be worked on locally by,

1. Clone this repo.<br />
		`git clone git@github.com:niallcreech/blockchain-developer-bootcamp-final-project.git`<br />
		`cd blockchain-developer-bootcamp-final-project`
2. [Installing Truffle and Ganache](https://www.trufflesuite.com).
3. Starting the Ganache server. <br />
   	`ganache-cli --port 7545`
4. Deploying the contract.<br />
	  `npm install`<br />
   	`truffle deploy --network development`
5. Starting the client front-end application.<br />
	  `cd client`<br />
	  `npm install`<br />
	  `npm start`
6. Navigating to the web address.<br />
  	`http://localhost:3000/`

It can also be tested by,
1. Running the contract tests.<br />
  `npm install`<br />
  `truffle test`
2. Running the front-end application tests.<br />
  `cd client`<br />
  `npm test`

Docker configurations and scripts are provided. Note, the initial container build 
can take a long time due to retrieving images from the internet.

1. [Install Docker](https://docs.docker.com/get-docker/).
2. Run the test suite. <br />
  	`./scripts/test` 
3. Run the server. <br />
  	`./scripts/server` 
