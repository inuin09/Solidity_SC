//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//4개의 가시성 지정자
contract Ex3_18{
    uint public pub=1;
    uint private pri=2;
    uint internal inter=3;
    //uint external ext=4;

    function funPub() public view returns(uint, uint, uint){
        return(pub, pri, inter);
    }
    function funPriv() private view returns(uint, uint, uint){
        return(pub, pri, inter);
    }
    function funInter() internal view returns(uint, uint, uint){
        return(pub, pri, inter);
    }
    function funExt() external view returns(uint, uint, uint){
        return(pub, pri, inter);
    }
}

/*
가시 지정자 public은 외부와내부에서 제약 없이 접근할 수 있으므로 pub과 funpub 버튼이 보인다.
public이 변수에 적용된 경우 최신 값을 반환하는 getter 함수가 자동으로 생성된다.

가시 지정자 external은 외부에서만 접근이 가능하며 내부에서는 접근이 불가능하다.
외부에서 접근이 가능하므로 funExt 버튼이 나왔다.

private와 internal이 적용된 변수와 함수는 내부에서만 접근할 수 있고 외부에서는 접근할 수 없다.

private이 적용된 funPriv 함수와 internal이 적용된 funInter 함수는 외부 접근이 불가능하다
즉, 내부 접근만 가능해서 funPriv와 funInter 함수의 버튼이 나오지 않는다.
그러나 private이 적용된 pri 변수와internal이 적용된 inter 변수는 funExt와 funPub 함수에서 반환된 것을 알 수 있다.
pri와 internal의 가시성 지정자로 인해내부 접근만 가능했지만 외부 접근이 가능한 funExt와 funPub 함수를 통해 pri와 internal의 값을 외부로 반환할 수 있게 됐다.

*/