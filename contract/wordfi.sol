
pragma solidity ^0.8.0;

contract WordFi {
    
    
    string[] public inspirationalLines;

    
    event LineSubmitted(uint256 index, string line, address indexed submitter);

    
    function submitLine(string memory _line) public {
        require(bytes(_line).length > 0, "Line cannot be empty."); // Basic validation

        
        inspirationalLines.push(_line);

        
        emit LineSubmitted(inspirationalLines.length - 1, _line, msg.sender);
    }

  
    function getTotalLines() public view returns (uint256) {
        return inspirationalLines.length;
    }
}
