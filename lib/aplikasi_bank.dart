class Nasabah {
  String? nama;
  String? alamat;
  late double saldo;

  // Constructor parameterized
  Nasabah(this.nama,this.alamat) {
    saldo = 0;
  }

  // Method simpan
  void simpan(double jumlah) {
    saldo += jumlah;
  }

  // Method ambil
  void ambil(double jumlah) {
    saldo -= jumlah;
  }
}

void main() {
  // Membuat objek nasabah1 dan nasabah2
  var nasabah1 = Nasabah('Budi', 'Jakarta');
  var nasabah2 = Nasabah('Andi', 'Bandung');

  // Melakukan transaksi pada nasabah1
  nasabah1.simpan(50000);
  nasabah1.ambil(10000);

  // Melakukan transaksi pada nasabah2
  nasabah2.simpan(75000);
  nasabah2.ambil(5000);

  // Menampilkan saldo terakhir dari nasabah1 dan nasabah2
  print('Saldo nasabah1: ${nasabah1.saldo}'); // Output: Saldo nasabah1: 40000.0
  print('Saldo nasabah2: ${nasabah2.saldo}'); // Output: Saldo nasabah2: 70000.0
}

