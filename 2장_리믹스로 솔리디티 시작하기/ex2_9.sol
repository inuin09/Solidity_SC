//논리 연산자
//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract Ex2_9{
    bool a=true&&true;
    bool b=true&&false;
    bool c=false&&false;
    bool d=true||true;
    bool e=true||false;
    bool f=false||false;
    bool g= !false;

    function logical() public view returns(bool, bool, bool, bool, bool, bool, bool){
        return(a,b,c,d,e,f,g);
    }
}