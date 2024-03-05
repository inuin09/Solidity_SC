//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//external 함수 참조 타입 사용 시 매개변수 calldata 지정
contract Ex3_16{
    function myFun(string calldata str) external pure returns(string memory){
        return str;
    }
}

/*
external 함수에 참조 타입의 매개변수를 입력할 때 calldata를 지정해야 한다.
주로 가시성 지정자 external이 적용된 함수의 매개변수는 콜데이터 공간을 사용하므로 myFun(string calldata str)와 같이
참조 타입 매개변수에 키워드 calldata를 명시해야 한다.
uint이나 boolean 같은 값 타입 매개변수는 키워드 calldata를 따로 명시하지 않아도 된다.
*/
