pragma solidity ^0.8.0;

contract UserPerformance {
    mapping(address => uint256) public performanceData;

    function updatePerformance(uint256 newPerformance) public {
        performanceData[msg.sender] = newPerformance;
    }

    function getPerformance(address user) public view returns (uint256) {
        return performanceData[user];
    }
}
