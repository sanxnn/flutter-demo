abstract class Kendaraan {
  void bunyiKlakson();
}

mixin BisaNgebut {
  void ngebut() {
    print('Brummm! Kendaraan ngebut!');
  }
}

class Motor extends Kendaraan {
  @override
  void bunyiKlakson() {
    print('tin tin');
  }
}

class Mobil extends Kendaraan with BisaNgebut {
  @override
  void bunyiKlakson() {
    print('tun tun!');
  }
}

void main() {
  var motorKu = Motor();
  motorKu.bunyiKlakson();

  print('-------------------');

  var mobilKu = Mobil();
  mobilKu.bunyiKlakson();
  mobilKu.ngebut(); 
}