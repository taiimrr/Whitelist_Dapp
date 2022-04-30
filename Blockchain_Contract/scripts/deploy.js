const { ethers } = require("hardhat");

async function main() {
  const whitelistContract = await ethers.getContractFactory("Whitelist");

  const deployedWhitelistCon = await whitelistContract.deploy(10);

  await deployedWhitelistCon.deployed();

  console.log("Contract Address", deployedWhitelistCon.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
