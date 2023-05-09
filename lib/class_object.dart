class Kucing {
  String? name;
  int? age; 
}

void main(List<String> args) {
  var kucing1 = Kucing();
  kucing1.name = 'Meong';
  kucing1.age = 3;

  print("aku punya kucing dengan nama ${kucing1.name} dan sekarang sudah berumur ${kucing1.age} tahun");

}