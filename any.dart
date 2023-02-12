import 'dart:ffi';
import 'dart:io';
import 'dart:core';
import 'any.dart';

void main(){
  print('Code Start.\n');

  Character hunterClass = Character(
    'Hunter',
    ['DevilHunter', 'Blaster', 'HawkEye', 'Scouter']
  );
  print(hunterClass.characterClass);
  print(hunterClass.name);
  hunterClass.identity();
  hunterClass.introduce();
  print('');
  
  Character assassinsClass = Character(
    'Assassins', 
    ['Blade', 'Demonic', 'Reaper']
    );
  print(assassinsClass.characterClass);
  print(assassinsClass.name);
  assassinsClass.identity();
  assassinsClass.introduce();
  print('');

  Idol blackPink = Idol(
    '블랙핑크',
    ['지수', '제니', '리사', '로제'],
  );
  print(blackPink.name);
  print(blackPink.members);
  blackPink.sayHello();
  blackPink.introduce();

  Idol bts = Idol(
    'BTS', 
    ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국']
    );
  print(bts.name);
  print(bts.members);
  bts.sayHello();
  bts.introduce();

  print('\nCode End.');
}


// character class
// _class     (클래스명)            - 변수
// name       (직업명)              - 변수
// identity   (특성소개)            -함수
// introduce  (클래스 내 직업 소개)   -함수
class Character {
  String? characterClass;
  List<String>? name;

  Character(String characterClass1, List<String> name1){
    this.characterClass = characterClass1;
    this.name = name1;
  }


  void identity(){
    print('This Class is ${this.characterClass}');
  }

  void introduce(){
    print('${this.name} in ${this.characterClass} Class');
  }
}

class Idol{
  String? name;
  List<String>? members;

  Idol(this.name, this.members);

  void sayHello(){
    print('안녕하세요 ${this.name}입니다');
  }

  void introduce(){
    print('저희 맴버는 ${this.members}가 있습니다.');
  }
}