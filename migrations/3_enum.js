const MyEnum = artifacts.require("MyEnum");

module.exports = function(deployer) {
  deployer.deploy(MyEnum);
};