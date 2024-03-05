//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//내부 접근이 불가능한 external 함수
contract Ex3_19{
    function funExt() external pure returns(uint){
        return 2;
    }
    
    function funPri() private pure returns(uint){
        return 3;
    }

    /*
    function outPutExt() public pure returns(uint){
        return funExt();
    }    
    */

    function outPutPri() public pure returns(uint){
        return funPri();
    }
}
/*
주석 처리된 부분에서 주석을 해제하면 오류가 발생한다.
그 이유는 funExt의 가시성 지정자는 외부 접근만 가능한 external이기 때문이다.
즉, outPutExt 함수는 funExt 함수를 내부적으로 접근해 호출한다.
*/