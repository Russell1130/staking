var staking = artifacts.require("./staking.sol");

module.exports = function(deployer) {
  deployer.deploy(staking);
};