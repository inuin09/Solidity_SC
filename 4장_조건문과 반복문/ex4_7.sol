//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//3회 반복문하는 반복문 while
contract Ex4_7{
    function fun1() public pure returns(uint){
        uint result=0;
        uint a=3;
        while(a>0){
            result=result+a;
            --a;
        }
        return result;
    }
}