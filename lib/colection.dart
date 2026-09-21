void main() {
  List<int> nilai = [80, 90, 65, 70, 95];
  print('Semua Nilai: $nilai');

  var nilaiLulus = nilai.where((n) => n >= 75).toList();
  print('Nilai Lulus: $nilaiLulus');

  var predikat = nilai.map((n) {
    return switch (n) {
      >= 90 => 'A',
      >= 75 => 'B',
      _ => 'C',
    };
  }).toList();
  print('Predikat: $predikat');
}