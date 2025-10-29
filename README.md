Project name : WORDFI
STORES INSPIRATIONAL LINES ON BLOCKCHAIN FOR PUBLIC VIEWING 
EASY TO USE 
SMART CONTRACT LINK : https://repo.sourcify.dev/11142220/0x0775C2555933Bb82CdC56F8e5CFd6D0c0602F028/
USE THIS CODE: 
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
# wordfi.sol!
<img width="1915" height="1003" alt="Screenshot 2025-10-29 141321" src="https://github.com/user-attachments/assets/a840ce9f-4200-43fc-af86-00cbc4803ee4" />
