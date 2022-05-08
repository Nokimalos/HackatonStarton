// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract Ballot {

    mapping (uint => string) _participants;
    mapping (address => uint) _votes;

    //["Nathalie Arthaud","Nicolas Dupont-Aignan","Anne Hidalgo","Yannick Jadot","Jean Lassalle","Marine Le Pen","Emmanuel Macron","Jean-Luc Melenchon","Valerie Pecresse","Philippe Poutou","Fabien Roussel","Eric Zemmour"]

    constructor(string[] memory participants)
    {
        for (uint i = 1; i <= participants.length; i += 1) {
            _participants[i] = participants[i - 1];
        }
    }

    function getVote(address wallet) public view returns(string memory)
    {
        require(_votes[wallet] == uint(0x0), "No vote for this wallet.");
        return _participants[_votes[wallet]];
    }

    function vote(address wallet, uint id) public returns(string memory)
    {
        require(_votes[wallet] == uint(0x0), "Already voted.");
        _votes[wallet] = id;
        return _participants[id];
    }
}