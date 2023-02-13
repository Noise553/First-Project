import 'dart:ffi';
import 'dart:io';
import 'dart:core';
import 'any.dart';

void main(){
  print('-----------Idol------------');
  Idol apink = Idol(name: '에이핑크', membersCount: 5);

  apink.sayName();
  apink.sayMemberscount();
  

  print('------------BoyGroup-------------');
  BoyGroup bts = BoyGroup('BTS', 7);
  bts.sayMemberscount();
  bts.sayName();
  bts.sayMale();

  print('--------------GirlGroup----------');
  GirlGroup redVelvet = GirlGroup('레드벨벳', 5);

  redVelvet.sayMemberscount();
  redVelvet.sayName();
  redVelvet.sayFemale();
  
  print('---------------Type Comparision----------------');
  print(apink is Idol);
  print(apink is BoyGroup);
  print(apink is GirlGroup);
  print('');
  print(bts is Idol);
  print(bts is BoyGroup);
  print(bts is GirlGroup);
  print('');
  print(redVelvet is Idol);
  print(redVelvet is BoyGroup);
  print(redVelvet is GirlGroup);
}

class Idol{
  String name;
  int membersCount;

  Idol({
    required this.name,
    required this.membersCount,
  });

  void sayName(){
    print('저는 ${this.name},입니다.');
  }

  void sayMemberscount(){
    print('${this.name}은 ${this.membersCount}명의 맴버가 있습니다.');
  }

}

class BoyGroup extends Idol{
  BoyGroup(
    String name,
    int membersCount,
  ): super(
    name: name,
    membersCount: membersCount
  );

  void sayMale(){
    print('저는 남자 아이돌입니다.');
  }

}

class GirlGroup extends Idol{
  GirlGroup(
    String name,
    int membersCount,
  ): super(
    name: name,
    membersCount: membersCount,
  );

  void sayFemale(){
    print('저는 여자 아이돌입니다.');
  }
}







// character class
// _class     (클래스명)            - 변수
// name       (직업명)              - 변수
// identity   (특성소개)            -함수
// introduce  (클래스 내 직업 소개)   -함수
// class Character {
//   final String? characterClass;
//   final List<String>? name;

//   // Character(String characterClass1, List<String> name1){
//   //   this.characterClass = characterClass1;
//   //   this.name = name1;
//   // }

//   Character(this.characterClass, this.name);


//   void identity(){
//     print('This Class is ${this.characterClass}');
//   }

//   void introduce(){
//     print('${this.name} in ${this.characterClass} Class');
//   }
// }

// class _Idol{
//   String name;
//   List<String> members;

//   // Idol(String name, List<String> members){
//   //   this.name = name;
//   //   this.members = members;
//   // }
//   _Idol(this.name, this.members);

//   _Idol.fromList(List values): 
//     this.members = values[0],
//     this.name = values[1];

//   void sayHello(){ 
//     print('안녕하세요 ${this.name}입니다');
//   }

//   void introduce(){
//     print('저희 맴버는 ${this.members}가 있습니다.');
//   }

//   String get firstMember{
//     return this.members[0];
//   }

//   set firstMember(String name){
//     this.members[0]=name;
//   }
// }

// void main(){
//   int a = 1, b =1 , c =1 ;

  
//   print(identical(a, b)); // identical(); : 두 파라미터의 값이 같은지 비교한다.
  // print('Code Start.\n');

  // Character hunterClass = Character(
  //   'Hunter',
  //   ['DevilHunter', 'Blaster', 'HawkEye', 'Scouter']
  // );
  // print(hunterClass.characterClass);
  // print(hunterClass.name);
  // hunterClass.identity();
  // hunterClass.introduce();
  // print('');
  
  // Character assassinsClass = Character(
  //   'Assassins', 
  //   ['Blade', 'Demonic', 'Reaper']
  //   );
  // print(assassinsClass.characterClass);
  // print(assassinsClass.name);
  // assassinsClass.identity();
  // assassinsClass.introduce();
  // print('');


// }