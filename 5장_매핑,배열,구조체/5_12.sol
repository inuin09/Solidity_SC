//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex5_12{
    uint[] public numbers=[1,2,3];

    function copy() public view returns(uint[] memory, uint[] memory){
        uint[] memory memoryNumbers = numbers;
        //memoryNumbers라는 변수가 있으며, 이 변수의 저장 영역은 memory로 선언
        //memoryNumbers 변수는 storage에 저장된 numbers를 대입받고 있으며 storage와 memory의 관계
        //storage와 memory의 관계이므로 변수 memoryNumbers는 numbers의 값 자체를 복사할 것이다.
        //즉, numbers와 memoryNumbers는 각자 독립된 값 [1,2,3]을 갖게 된다.
        //결론적으로 memoryNubmers[0]=11로 이 배열의 0번째 인덱스를 11로 변경해도 numbers는 영향을 받지 않을 것
        memoryNumbers[0]=11;
        return (numbers, memoryNumbers);
    }
}

/*
함수 외부에 numbers가 선언되었으므로 storage에 저장된 것을 알 수 있다.
*/