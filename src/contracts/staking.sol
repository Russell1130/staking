pragma solidity ^0.5.0;

contract staking {

    uint public stakeCount = 0;
    mapping(address => uint) public stArray;
    mapping(uint => address) public userAddr;

    event StakeCreated(
        uint id,
        uint amount,
        address payable author
    )


    constructor() public {

    }

    function createStake(uint memory _amount) public {
        require(bytes(_amount).length > 0);
        stakeCount++;
        stArray[msg.sender]=_amount;
        userAddr[stakeCount]=msg.sender;
        emit StakeCreated(stakeCount, _amount, msg.sender);
    }

}