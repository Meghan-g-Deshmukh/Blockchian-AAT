// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract CarbonCreditTrading {
    address public regulator;
    constructor() {
        regulator = msg.sender;
    }
    struct Company {
        string name;
        uint credits;
        bool isRegistered;
    }
    mapping(address => Company) public companies;
    event CompanyRegistered(address indexed company, string name);
    event CreditsIssued(address indexed company, uint amount);
    event CreditsTransferred(address indexed from, address indexed to, uint amount);
    modifier onlyRegulator() {
        require(msg.sender == regulator, "Only regulator can perform this action");
        _;
    }
    modifier onlyRegistered() {
        require(companies[msg.sender].isRegistered, "Not a registered company");
        _;
    }
    function registerCompany(address _companyAddr, string memory _name) public onlyRegulator {
        require(!companies[_companyAddr].isRegistered, "Company already registered");
        companies[_companyAddr] = Company(_name, 0, true);
        emit CompanyRegistered(_companyAddr, _name);
    }
    function issueCredits(address _companyAddr, uint _amount) public onlyRegulator {
        require(companies[_companyAddr].isRegistered, "Company not registered");
        companies[_companyAddr].credits += _amount;
        emit CreditsIssued(_companyAddr, _amount);
    }
    function transferCredits(address _to, uint _amount) public onlyRegistered {
        require(companies[_to].isRegistered, "Recipient not registered");
        require(companies[msg.sender].credits >= _amount, "Not enough credits");
        companies[msg.sender].credits -= _amount;
        companies[_to].credits += _amount;
        emit CreditsTransferred(msg.sender, _to, _amount);
    }
    function getMyCredits() public view returns (uint) {
        require(companies[msg.sender].isRegistered, "Not registered");
        return companies[msg.sender].credits;
    }
    function getCompanyCredits(address _addr) public view returns (string memory name, uint balance) {
        require(companies[_addr].isRegistered, "Company not registered");
        Company memory c = companies[_addr];
        return (c.name, c.credits);
    }
} 
