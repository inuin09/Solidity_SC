//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//매개변수와 반환값이 있는 함수
contract Ex3_9{
    uint public a=3;
    function myFun(uint b) public returns(uint){
        a=b;
        return a;
    }
}