// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract MyEnum {
    // First we have to define an Enum
    // and then you must create a variable of the enum type to actually use it in the contract.

    // Defining the Enum
    // Recomended Pascal Case for enum values

    enum Status {
        Pending,
        Shipped,
        Delivered,
        Cancelled
        }

    Status public currentStatus; // Declare a variable of type Status

    constructor() public {
        currentStatus = Status.Pending; // Initializing the variable or setting the default
    }

    // working with enums and if-else

    function setShipped () public returns (string memory){
        string memory message;

        if(currentStatus != Status.Shipped){

            currentStatus = Status.Shipped;
            message = "Shipped";

            return message ;
        }

        return message= "Already Shipped";
    }

    function setDelivered () public returns(string memory){

        string memory message;

        if (currentStatus != Status.Delivered ) {

            currentStatus = Status.Delivered;
            message = "Delivered";

            return message;
        }

         return "Already Delivered";
    }

    function setCancel () public returns(string memory){
        string memory message;

        if( currentStatus != Status.Cancelled){
            currentStatus = Status.Cancelled;

            return message = "Cancelled";
        }

        return message = "Already Cancelled";
    }

    function viewStatus () public view returns (string memory) {

        if(currentStatus == Status.Pending) {
            return "Pending";
        }
        if(currentStatus == Status.Shipped) {
            return "Shipped";
        }
        if(currentStatus == Status.Delivered) {
            return "Delivered";
        }
        if(currentStatus == Status.Cancelled) {
            return "Cancelled";
        }

        return "Unknown Status";
    }

}