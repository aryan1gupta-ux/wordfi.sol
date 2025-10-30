### 🧩 WORDFI
---
## WORDFI.sol!
<img width="1915" height="1003" alt="Screenshot 2025-10-29 141321" src="https://github.com/user-attachments/assets/a840ce9f-4200-43fc-af86-00cbc4803ee4" />

---

A Fun Smart contract word Guessing Game

---

🧠 Project Overview

WORDFI is a blockchain-based word guessing game built with Solidity.
Players try to guess a secret word within a limited number of attempts, and the smart contract automatically verifies the correct word once the game ends.


---

✨ Features

✅ Easy to Use: Simple interface for guessing words.
✅ Fair and Transparent Results: All guesses are stored and verified on-chain.
✅ Automated Verification: The smart contract reveals the correct word at the end.


---

📘 Usage Instructions

1. Copy or open the contract in Remix IDE.
SMART CONTRACT LINK : https://repo.sourcify.dev/11142220/0x0775C2555933Bb82CdC56F8e5CFd6D0c0602F028/
---

---
USE THIS CODE: 
----
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
---
MADE BY ARYAN GUPTA 😀
