// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import '../node_modules/@openzeppelin/contracts/access/Ownable.sol';

contract CredentialBox is Ownable {

    struct Credential {
        address user_Address;
        uint256 nft_Id;
        string DID;
        string certification;
        string verification;
        uint256 renewal_Data;
        // uint256 credential_Id;
    }
    
    struct IssuedAddress {
        address user_Address;
        Credential credential;
    }

    IssuedAddress[][36] public issuedAddressMap;

    function createCredential(uint8 _nftId, string memory _DID) view public returns(Credential memory) {
        return Credential(msg.sender, _nftId, _DID, 'certification', 'verification', 1804805);
    }

    function addCredential() public view returns(IssuedAddress memory) {
        // Credential[] storage Credentials;
        // Credentials.push(createCredential(3,'deerer'));
        
        return IssuedAddress(msg.sender, createCredential(3,'deerer'));
    }

    function pushIssuedAddressMap(uint8 _AddressKeyNum) public {
        issuedAddressMap[_AddressKeyNum].push(addCredential());
    }

    function viewIs() view public returns(IssuedAddress[][36] memory ){
        return issuedAddressMap;
    }


    /**

    issuedAddressMap = [
        [],
        [
            {  // IssuedAddress
                user_Address:'0x1234',
                credential:[
                    {
                        address:'0x1234',
                        nftId:0,
                        did:'did:eth:1234:0:name:phone:timestamp:pk:gk",
                        certification:'nft_id0",
                        verification:'wallet1234',
                        renewalData:17235123515
                    },
                    {
                        address:'0x1234',
                        nftId:1,
                        did:'did:eth:1234:1:name:phone:timestamp:pk:gk",
                        certification:'nft_id1",
                        verification:'wallet1234',
                        renewalData:17235123515
                    },
                ]
            }
        ],
        [],
        [],
        [],
        [],
        [],
        [],
        [],
        [],
        [],
    ]

     */



}