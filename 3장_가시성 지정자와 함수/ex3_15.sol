//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//함수 참조 타입 사용 시 매개변수, 반환값, 변수메모리 지정
contract Ex3_15{
    function myFun(string memory str) 
    public 
    pure 
    returns(
        uint, 
        string memory, 
        bytes memory
        )
    {
        uint num=99;
        bytes memory byt=hex"01";
        return (num, str, byt);
    }
}

//함수가 실행될 때 함수의 매개변수, 반환값, 내부 변수가 단기적으로 메모리에 저장된다.
/*
자료형 uint는 값 타입에 속하므로 함수를 실행할 떄매개변수의 저장공간을 지정해주지 않았다.
배열 형태를 갖고 있는 bytes와 string은 참조 타입에 속하므로 memory를 따로 명시했다.
즉, 참조 타입에는 배열, 매핑, 구조체가 있으며 이 자료형을 함수에 선언하려면 저장공간을 나타내는 memory를 따로 지정해야 한다.

또한, 고정 크기를 가진 배열 형태의 바이트에 값을 대입할 때 0x를 붙여서 16진수 값을 넣었다.
그러나 동적 크기를 가진 배열인 바이트는 값을 대입할 때 0x를 붙이면 오류가 발생할 것이다.

동적 크기를 가진 배열 타입의 바이트에서는 16진수 리터럴을 표현하는 키워드 hex를 붙여서 bytes memory byt=hex"01"처럼 명시해야 한다.
*/