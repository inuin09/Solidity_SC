//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//함수 반환값에 이름 명시

contract Ex3_7{
    function myFun() public pure returns(uint age, uint weight){
        //age와 weight을 따로 선언하지 않고 대입 (myFun 함수 내부에서 변수 age와 weight가 선언되어 있기 때문에 그냥 사용 가능)
        age = 31;
        weight=60;
    }
}