//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//배열의 길이와 인덱스에 대응하는 값 구하는 방법
contract Ex5_3{
    uint[] public array1;
    //uint 자료형을 가진 배열을 나타내며 uint형의 값만 저장할 수 있으며, 이 배열은 현재 크기가 따로 지정되지 않은 동적 크기 배열이다.
    //크기가 따로 지정되어 있지 않으므로 값을 입력하기 전까지는 크기가 0이다. 
    string[5] public array2=["apple","banana","coconut"];

    function getLength1() public view returns(uint){
        //배열의 길이를 반환하는 함수
        return array1.length;
    }
    function getLength2() public view returns(uint){
        //배열의 길이를 반환하는 함수
        return array2.length;
    }
    function getArray1(uint _index) public view returns(uint){
        //매개변수 _index를 입력받고 그 인덱스에 저장된 값을 반환
        return array1[_index];
    }
    function getArray2(uint _index) public view returns(string memory){
        //매개변수 _index를 입력받고 그 인덱스에 저장된 값을 반환
        return array2[_index];
    }
}