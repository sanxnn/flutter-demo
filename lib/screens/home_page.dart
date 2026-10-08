import 'package:flutter/material.dart';

import '../models/mahasiswa.dart';

class HomePage extends StatelessWidget {
  // final Mahasiswa mahasiswa;

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Mahasiswa> daftarMahasiswa = [
      Mahasiswa(
        nama: 'Muhammad Hasan Al Bukhori',
        email: 'hasan@gmail.com',
        nomorHp: '081234567890',
        gender: 'Laki-laki',
        tanggalLahir: DateTime(2005, 5, 10),
        alamat: 'Jember',
        username: 'hasanbukhori',
        password: '123456',
      ),
      Mahasiswa(
        nama: 'Rafi Rafsajani',
        email: 'rafi@gmail.com',
        nomorHp: '081234567891',
        gender: 'Laki-laki',
        tanggalLahir: DateTime(2005, 3, 20),
        alamat: 'Lumajang',
        username: 'rafirafsajani',
        password: '123456',
      ),
      Mahasiswa(
        nama: 'Abhista YP',
        email: 'abhista@gmail.com',
        nomorHp: '081234567892',
        gender: 'Laki-laki',
        tanggalLahir: DateTime(2006, 8, 15),
        alamat: 'Bondowoso',
        username: 'abhistaYP',
        password: '123456',
      ),
      Mahasiswa(
        nama: 'Rayhan Riyadhul Jinan',
        email: 'rayhan@gmail.com',
        nomorHp: '081234567893',
        gender: 'Laki-laki',
        tanggalLahir: DateTime(2005, 11, 10),
        alamat: 'Banyuwangi',
        username: 'rayhanriyadhuljinan',
        password: '123456',
      ),
      Mahasiswa(
        nama: 'Riri',
        email: 'riri@gmail.com',
        nomorHp: '081234567894',
        gender: 'Perempuan',
        tanggalLahir: DateTime(2006, 1, 1),
        alamat: 'Probolinggo',
        username: 'riri',
        password: '123456',
      ),
    ];

    // final mahasiswa = ModalRoute.of(context)!.settings.arguments as Mahasiswa;

    // daftarMahasiswa.add(mahasiswa);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Data Mahasiswa',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8),

              Text(
                'Total mahasiswa: ${daftarMahasiswa.length}',
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),

              const SizedBox(height: 24),

              for (Mahasiswa mahasiswa in daftarMahasiswa)
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.shade300),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.15),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mahasiswa.nama,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 16),

                      Text(
                        'Email: ${mahasiswa.email}',
                        style: const TextStyle(fontSize: 15),
                      ),

                      const SizedBox(height: 8),

                      Text(
                        'Nomor HP: ${mahasiswa.nomorHp}',
                        style: const TextStyle(fontSize: 15),
                      ),

                      const SizedBox(height: 8),

                      Text(
                        'Jenis Kelamin: ${mahasiswa.gender}',
                        style: const TextStyle(fontSize: 15),
                      ),

                      const SizedBox(height: 8),

                      Text(
                        'Tanggal Lahir: '
                        '${mahasiswa.tanggalLahir.day}/'
                        '${mahasiswa.tanggalLahir.month}/'
                        '${mahasiswa.tanggalLahir.year}',
                        style: const TextStyle(fontSize: 15),
                      ),

                      const SizedBox(height: 8),

                      Text(
                        'Alamat: ${mahasiswa.alamat}',
                        style: const TextStyle(fontSize: 15),
                      ),

                      const SizedBox(height: 8),

                      Text(
                        'Username: ${mahasiswa.username}',
                        style: const TextStyle(fontSize: 15),
                      ),

                      const SizedBox(height: 8),

                      Text(
                        'Password: ${mahasiswa.password}',
                        style: const TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
