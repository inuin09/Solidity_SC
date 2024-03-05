//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//pure가 적용된 함수
contract Ex3_10{
    function myFun(uint a) public pure returns(uint){
        //함수 밖의 변수를 사용하지 않고 함수 자체 내에서 매개변수를 받아 반환
        //myFun 함수 외부에 있는 변수를 myFun 함수의 로직에 선언하지 않았으므로 pure를 적용
        return a;
    }
}
//myFun 함수는 외부에 존재하는 변수를 사용하지 않았으므로 모디파이어 pure가 적용됐음
//리믹스에서 pure 또는 view가 붙어있는 함수를 실행하면 함수의 반환 값이 함수 버튼 밑에 나옴

//함수에 pure 모디파이어가 잘못 적용된 경우,
//pure를 적용하려면 함수 외부에 있는 변수를 함수 로직에 선언하지 말아야 함
