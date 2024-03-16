//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//구조체를 적용한 배열과 매핑
//구조체 Human을 배열과 매핑에 자료형으로 적용한다.

contract Ex5_8 {
    struct Human{
        string name;
        uint age;
    }

    Human[] public humanArray;
    mapping(address=>Human) public humanMapping;

    function addArray(string memory _name, uint _age) public{
        humanArray.push(Human(_name,_age));
    }
    function getArrayName(uint _index) public view returns(string memory){
        return humanArray[_index].name;
    }
    function addMapping(address _key, string memory _name, uint _age) public{
        humanMapping[_key]=Human(_name,_age);
    }
    function getMappingAge(address _key) public view returns(uint){
        return humanMapping[_key].age;
    }
}

/*
TypeError: Return argument type uint256 is not implicitly convertible to expected type (type of first return variable) string memory.
  --> 5장_매핑,배열,구조체/5_8.sol:26:16:
   |
26 |         return humanMapping[_key].age;
   |                ^^^^^^^^^^^^^^^^^^^^^^

오류를 발견하였으나 해결하지 못하였음...
*/