void main(){
//var p1 = Person('Jidapa', 'Gondin', 22);
//var p2 = Person('Somchai', 'xxx', 30);

var n = 'abc';
var p =100;
//สร้าง object product โดยช้้อมูลที่ดึงมาจาก database
var product = Product(n, p, orderCount: 10);

  print(product.name);
  print(product.price.toString());
  print(product.orderCount.toString());
  product.orderCount = 10;

}
class Person{
  final String firstName;
  final String lastName;
  final int age;

  //shorthand, shortcut syntax ของภาษา Dart
  Person(this.firstName,this.lastName, this.age);// final สามารถกำหนดค่าผ่าน constructor ได้
  //ถ้าจะกำหนดค่าเริ่มต้นต้องใช้ constructor มาช่วยกำหนดค่า


}
class Product{
  final String name;
  final int price;
  int orderCount = 0;

  Product(this.name, this.price, {required this.orderCount});// orderCount : name paramitor ต้องระบุชื่อ จะส่งค่าหรือไม่ส่งก็ได้
//ถ้าใส่ {} = name paramitor ถ้าใส่ required ต้องส่ง orderCount เข้ามา
}
