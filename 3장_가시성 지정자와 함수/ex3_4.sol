//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//두 개 이상의 매개변수를 가진 함수

contract Ex3_4{
    uint public a=3;
    function myFun(uint b, uint c, uint d) public{
        a=b;
        b=c;
        a=d;
    }
}