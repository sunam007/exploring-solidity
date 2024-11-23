// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract DataType {
    string public myString = "this is a test string" ;
    bool public myBool = true;
    int public myInt = -1;
    uint public myUint = 1; // no - sign , only positive int value
    uint8 public myUint8 = 255; // max 0-255
    uint256 public myUint256 = 9999;
}