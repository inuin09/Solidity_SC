//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//배열의 값 삭제하는 방법
contract Ex5_5{
    uint[] public array=[97,98,99];

    function getLength() public view returns(uint){
        return array.length;
    }
    function popArray() public{
        //배열의 내장 함수 pop을 통해 배열의 값을 삭제
        //pop을 통해 배열의 값을 삭제한다면 마지막 인덱스가 없어지면서 배열의 크기도 줄어든다.
        array.pop();
    }
    function deleteArray(uint _index) public{
        //키워드 delete를 통해 배열의 값을 삭제
        //매핑에서 값을 삭제하는 방식과 동일하며, delete 키워드를 통해 값을 삭제하면 원하는 인덱스의 값을 제거할 수 있다.
        //그러나 배열의 크기는 줄어들지 않는다.
        //delete에 의해 삭제된 값은 정수형 배열일 경우, 0으로 덮어씌우기 때문이다. (만약, 배열의 자료형이 문자열이면 공백으로 덮어씌운다)
        //매핑에서도 봤듯이 delete 키워드를 사용하면 배열의 자료형의 기본값으로 배열을 덮어쓴다. 
        delete array[_index];
    }
}