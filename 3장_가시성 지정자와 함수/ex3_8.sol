//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//함수의 반환값을 변수에 대입

contract Ex3_8{
    uint public a=3;
    uint public b=myFun();
    function myFun() public returns(uint){
        a=100;
        return a;
    }
}