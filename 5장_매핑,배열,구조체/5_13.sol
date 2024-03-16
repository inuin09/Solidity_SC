//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//그 외의 참소 타입 storage가 포함된 관계
contract Ex5_13{
    uint[] public numbers=[1,2,3];
    uint[] public copyNumbers = numbers;

    function add() public returns(uint[] memory, uint[] memory){
        //numbers와 copyNumbers의 결괏값이 다르게 나오는 것을 확인할 수 있다.
        //즉, 해당 관계는 값 자체를 복사했으므로 서로 영향을 받지 않았다.
        copyNumbers.push(99);
        return (numbers, copyNumbers);
    }
}