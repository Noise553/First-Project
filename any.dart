import 'dart:ffi';

import 'dart:io';
import 'dart:core';
import 'any.dart';

void main(){
  List<String> softwareCompany= ['apple', 'google', 'microsoft', 'aranCP', 'facebook'];

  print(softwareCompany.map((x){ //이것은 .map()이라는 함수 안에 함수를 또 넣은 형태이다 x라는 파라미터의 넣은 값이 리턴 값으로 바뀌는 코드이다.
    return 'aran $x';
  }));
  //실행결과 
  //(aran apple, aran google, aran microsoft, aran aranCP, aran facebook)

  final newSoftwareCompany = softwareCompany.map((x){ //리스트의 모든 인덱스를 파라미터 x로 전송(참조1)
    return 'aran $x';
  });

  print(newSoftwareCompany.toList());

  final newSoftwareCompany2 = softwareCompany.map((e) => 'aran $e');//참조1의 간소화 버전
  
  print(newSoftwareCompany2);

  print(softwareCompany == newSoftwareCompany); //false 서로 다른 리스트 이다.
  print(newSoftwareCompany == newSoftwareCompany2); //false 다른 리스트
  //.map()으로 선언된 리스트는 서로 다른 리스트이다.

  //[1.jpg, 3.jpg, 5.jpg, 7.jpg, 9.jpg]
  String num = '13579';

  print(num);
  final parsed = num.split(' ').map((e) => '$e.jpg');//split():함수 안에 있는 값이 들어올 때 단어를 끊어 주는 역할 interable 형태이다.(참조2)
  
  //참조2 interable이란 값을 리스트 형태로 분리한 형태로 리스트와 비슷한 역할을 한다 하지만 리스트와는 다르며 주로 .map, .set 함수를 이용할 때 이런 형태로 반환한다.
  print(parsed);

}