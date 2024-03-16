//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//조건식이 부합하지 않아도 실행하는 반복문 do-while
contract Ex4_9{
    function fun1() public pure returns(uint){
        uint result=0;
        uint a=5;
        do{
            result=result+a;
            ++a;
        }while(a>10);
        return result;
    }
}