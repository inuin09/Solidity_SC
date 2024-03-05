//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//external이 적용된 함수를 내부적으로 호출하는 방법
//this를 통해 내부 접근이 가능한 external 함수
contract Ex3_20{
    function funExt() external pure returns(uint){
        return 2;
    }
    function outPutExt() public view returns(uint){
        return this.funExt();
    }
}