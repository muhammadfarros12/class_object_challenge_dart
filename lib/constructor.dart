import 'dart:convert';

//1
class Mahasiswa {
  String? name;
  String? jurusan;
  int? angkatan;

  // 2
  // Mahasiswa(){
  //   name = '';
  //   jurusan = '';
  //   angkatan = 0;
  // }

  // 3
  // Mahasiswa(this.name, this.jurusan, this.angkatan);

  // 4
  Mahasiswa.fromJson(String jsonString){
    Map<String, dynamic> json = jsonDecode(jsonString);
    name = json['name'];
    jurusan = json['jurusan'];
    angkatan = json['angkatan'];

  }

}

void main() {
  // Constructor default
  // var mahasiswa1 = Mahasiswa();
  // mahasiswa1.nama = 'Budi';
  // mahasiswa1.jurusan = 'Informatika';
  // mahasiswa1.angkatan = 2020;

  // Constructor parameterized
  //var mahasiswa2 = Mahasiswa('Andi', 'Sistem Informasi', 2019);

  // Constructor named fromJson
  var jsonString = '{"nama": "Cindy", "jurusan": "Teknik Sipil", "angkatan": 2021}';
  var mahasiswa3 = Mahasiswa.fromJson(jsonString);

  //print(mahasiswa1.nama); // Output: Budi
  //print(mahasiswa2.angkatan); // Output: 2019
  print(mahasiswa3.jurusan); // Output: Teknik Sipil
}
