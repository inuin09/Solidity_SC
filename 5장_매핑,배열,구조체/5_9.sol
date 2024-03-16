//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//참조 타입 memory와 memory
contract Ex5_9{
    uint public a=3;
    uint public b=a;

    function changeA() public returns(uint, uint){
        a=5;
        return(a,b);
    }

    function changeInput(uint[] memory _input) public pure returns(uint[] memory, uint[] memory){
        uint[] memory copyInput=_input;
        //두 참조 타입이 memory에 명시될 경우 서로 값을 가리키는 주소를 공유하며 서로 영향을 주고 받는다.
        //즉, 두 배열은 memory에 저장되어 있으므로 copyInput과 _input은 매개변수로 입력될 값의 주소를 공유한다.
        copyInput[0]=11;
        //copyInput의 0번째 인덱스 값이 11로 변경됨
        //즉, copyInput의 배열 값이 변경됐으니 같은 배열 값의 주소를 공유하는 매개변수 _input의 배열 값도 바뀌었을 것을 예상할 수 있다.
        return(_input, copyInput);
    }
}