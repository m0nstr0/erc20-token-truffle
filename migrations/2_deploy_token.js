var SMT = artifacts.require("./SimpleToken.sol");

module.exports = function(deployer) {
  deployer.deploy(SMT);
};