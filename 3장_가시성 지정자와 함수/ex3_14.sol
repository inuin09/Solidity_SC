//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//pure와 view를 적용할 수 없는 함수
contract Ex3_14{
    uint public a=3;
    function myFun() public returns(uint){
        a=4;
        return a;
    }
}