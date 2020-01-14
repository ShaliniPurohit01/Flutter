// addNumbers(num1,num2){
//   print(num1+num2);
// }
// void main() {
//   addNumbers(2,2);
//   print('Hello!');
// }



// addNumbers(int num1,int num2){
//   print(num1+num2);
// }
// void main() {
//   addNumbers(2,2.4); //error
//   print('Hello!');
// }



// addNumbers(double num1,double num2){
//   print(num1+num2);
// }
// void main() {
//   addNumbers(2.3,2.4); 
//   print(addNumbers(2.3,2.4));
//   print('Hello!');
// }




// void addNumbers(double num1,double num2){
//   return num1 + num2;
// }
// void main() {
//   print(addNumbers(2.3,2.4)); //error
//   print('Hello!');
// }



// int addNumbers(int num1,int num2){
//   return num1 + num2;
// }
// void main() {
//   print(addNumbers(2,2));

//   print('Hello!');
// }


// ***************   varibales    *************

// int addNumbers(int num1,int num2){
//   return num1 + num2;
// }
// void main() {
//   var demo=addNumbers(2,2);
//   demo=addNumbers(23,1);
//   print(demo + 1);
//   print('Hello!');
// }


// double addNumbers(double num1,double num2){
//   return num1 + num2;
// }
// void main() {
//   double demo;
//   demo=addNumbers(23,1);
//   print(demo + 1);
//   print('Hello!');
// }

// ******** class and objects **********

// class Person{
//     String name="max";
//     int age=30;
// }
// void main() {  
//   //creating an instance of class person
//   var p1=Person();
//   print(p1); //Instance of 'Person'
//   print(p1.name); //max
//   print(p1.age); //30 
//   var p2=Person();
//   print(p2); //Instance of 'Person'
//   p2.name='min';
//   p2.age=40;
//   print(p2.name); //min
//   print(p2.age); //40
// }


// *******  Constructor    *******

// class Person{
//     String name;
//     int age;
  
//   Person(String myName,int age){
//     name = myName;
//     this.age=age;
//   }
// }
// void main() {  
//   var p1=Person('Shaily',23);
//   print(p1.name); //Shaily
//   print(p1.age); //23
// }


// ***** Named Argument *****
// class Person{
//     String name;
//     int age; 
//   Person({String myName,int age}){
//     name = myName;
//     this.age=age;
//   }
// }
// void main() {  
//   var p1=Person(myName:'Shaily',age:23);
//   print(p1.name); //Shaily
//   print(p1.age); //23
// }

// ***** default value *****
// class Person{
//     String name;
//     int age; 
//   Person({String myName,int age=50}){
//     name = myName;
//     this.age=age;
//   }
// }
// void main() {  
//   var p1=Person(myName:'Shaily');
//   print(p1.name); //Shaily
//   print(p1.age); //50
// }


// class Person{
//     String name;
//     int age; 
//   Person({this.name,this.age=50});
// }
// void main() {  
//   var p1=Person(name:'Shaily');
//   print(p1.name); //Shaily
//   print(p1.age); //50
// }