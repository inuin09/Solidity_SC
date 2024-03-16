//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//3회 반복하는 반복문 do-while
contract Ex4_8{
    function fun1() public pure returns(uint){
        uint result=0;
        uint a=0;
        do{
            result=result+a;
            ++a;
        }while(a<3);
        return result;
    }
}