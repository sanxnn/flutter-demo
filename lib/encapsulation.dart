class Produk {
  String nama;
  double _harga = 0; 

  // Named constructor
  Produk.gratis(this.nama); 

  //getter
  double get harga => _harga;

  //setter
  set harga(double value) {
    if (value >= 0) {
      _harga = value;
    } else {
      print('Error: Harga tidak boleh negatif!');
    }
  }
}

void main() {
  var p1 = Produk.gratis('Kaos Kaki');
  print('Nama Produk: ${p1.nama}, Harga: ${p1.harga}');
  
  //harga negatif
  p1.harga = -5000; 
  
  //harga yang benar
  p1.harga = 15000;
  print('Harga sekarang: ${p1.harga}');
}