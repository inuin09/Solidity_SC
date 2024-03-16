//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//순차 검색
contract Ex5_6{
    string[] public fruitArray=["apple","banana","coconut","durian","etrog"];
    
    function linearSearch(string memory _word) public view returns(uint256, string memory){
        /*
        linearSearch는 fruitArray에서 검색하고자 하는 매개변수 _word를 받고 있음
        반환값으로는 배열에서 찾은 단어의 인덱스와 단어를 반환
        아무것도 찾지 못하는 경우, 0과 Nothing을 반환
        */
        for(uint index=0; index<fruitArray.length; ++index){
            if(keccak256(bytes(fruitArray[index]))==keccak256(bytes(_word))){
                /*
                솔리디티는 문자열과 문자열을 비교하는 기능이 없음
                솔리디티에서 제공하는 내장 함수 keccak256을 통해 비교하고자 하는 문자열을 모두 해시로 만들어야 함
                해시화를 거치면 해당 문자열에 관한 유일무이한 바이트 값을 얻게 됨
                즉, 비교하고자 하는 문자열을 해시화한 후 두 개의 고유한 바이트 값을 비교하는 것
                두 바이트 값이 같다면 두 개의 문자열이 같다는 것을 의미함

                Keccak256 함수의 매개변수는 바이트이므로 fruitArray 배열의 값과 _word의 값을 바이트화한다.
                
                반복문의 증감식을 통해 index의 값을 순차적으로 증가시켜 배열의 값에 순차적으로 접근할 수 있음
                */
                return(index, fruitArray[index]);
            }
        }
        return (0, "Nothing");
    }
}