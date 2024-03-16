//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//참조 타입 storage와 local storage : 값의 주소를 공유한다.
contract Ex5_10{
    uint[] public numbers=[1,2,3];
    //배열 numbers는 [1,2,3]을 갖고 있으며 스토리지에 저장된 상태

    function _push99(uint[] storage _input) internal returns(uint[] memory){
    //함수 _push99는 매개변수에 storage가 명시되어 있음 -> 매개변수를 storage에 저장한다는 뜻이며, 함수 내부에 있기에 local storage라 부름
    //매개변수에 storage를 명시할 때는 가시성 지정자가 internal이나 private이어야 한다 (즉, public과 external은 불가능)
        uint[] storage copyInput=_input;
        //copyInput에 배열 타입의 매개변수 _input을 복사
        copyInput.push(99);
        copyInput.push(99);
        copyInput.push(99);
        //99를 3번 추가한 후,
        return(copyInput);
        //copyInput을 반환

        //스토리지에 저장된 numbers가 _push99의 매개변수로 입력돼 최종적으로 numbers가 copyInput에 대입돼 복사된다면 storage와 local storage의 관계라 할 수 있음
        //즉, numbers는 스토리지에 저장됐으며 copyInput은 함수 내부에서 storage으로 선언됐으므로 local storage이다.
        //결론적으로 copyInput과 numbers는 배열 값의 주소를 공유하고 _push99의 로직에 의해 copyInput에 99를 3번 추가하면 copyInput과 numbers의 배열 값이[1,2,3,99,99]가 된다.
    }
    function add() public returns(uint[] memory, uint[] memory){
        //배열 numbers와 _push99의 반환값, 즉 로컬 스토리지에 있는 배열 copyInput을 반환
        return(numbers, _push99(numbers));
    }
    //_push99 함수는 numbers를 매개변수로 입력받으며, storage와 local storage의 관계가 성립되며 _push99 함수에 의해 copyInput에 99가 3번 추가되면 copyInput과 numbers의 배열 값은 [1,2,3,99,99]fmf rkwrp ehla
    //결론적으로 add 함수는 numbers의 배열과 push99의 반환값을 반환할것이다.

    /*
    //error 발생
    function push77(uint[] memory _input) public{
        input.push(77);
    } 

    //error 발생
    function map(mapping(uint=>uint) memory _input) public{
    
    }
    */
}