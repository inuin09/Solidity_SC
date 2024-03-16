//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//4.1.2 if문의 예
contract Ex4_1{ 
    function fun1(uint a) public pure returns(uint){
        if(a>=10){
            a=9;
        }
        return a;
    }
}