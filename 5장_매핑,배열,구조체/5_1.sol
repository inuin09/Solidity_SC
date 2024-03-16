//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//매핑에 키와 값 추가하는 방법
contract Ex5_1{
    mapping(address=>uint) public balances; //balances 매핑 : 키의 자료형 address, 값의 자료형 uint

    function addMapping(address _key, uint _amount) public{
        //balances 매핑에 데이터를 저장하는 함수
        //참고로 balances 매핑의 키와 값의 자료형은 address와 uint이므로 매개변수의 자료형도 address와 uint이다.
        //즉, address _key와 uint _amount를 매개변수로 받고, 최종적으로 입력받은 두 개의 매개변수는 balances 매핑의 키와 값으로 추가될 것이다.
        balances[_key]=_amount;
    }
    function getMapping(address _key) public view returns(uint){
        //balances 매핑의 값을 반환한다.
        //balances 매핑에서 값을 출력하려면 이 매핑에 키를 넣어줘야 한다.
        //매개변수 _key를 입력받은 후 balances[_key]와 같이 balances 매핑에 _key를 넣어 해당 키에 대응하는 값을 출력한다.
        return balances[_key];
    }
}
//balances 함수가 자동으로 생겼는데, 이는 balances 매핑을 public으로 지정했으므로 저절로 getter 함수가 생긴 것
//즉, balances 함수와 getMapping 함수는 같으며 balances에 getMapping에 입력한 매개변수를 넣으면 getMapping과 같은 결과값 1000을 출력하는 것을 볼 수 있다.
