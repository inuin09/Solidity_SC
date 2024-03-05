//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//view가 적용된 함수
contract Ex3_12{
    uint public a=4;
    function myFun() public view returns(uint){
        uint b=a+5;
        return b;

    }
}

// view가 적용된 함수 외부에 있는 변수를 이 함수 로직에 선언할 수는 있지만, 해당 변수의 값을 직접 변경할수는 없다.
// 예를 들어, a=4이지만 a=10으로 바로 직접 변경할수는 없다는 것이다.