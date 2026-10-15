import 'package:flutter/material.dart';

class TujuanPage extends StatelessWidget {
  const TujuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF452B),
      appBar: AppBar(
        title: const Text(
          'Ini Halaman Tujuan',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFFFF452B),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Untuk berpindah ke halaman lain, kita dapat '
                    'menggunakan Navigator.pushNamed(). Metode ini '
                    'akan membuka halaman yang telah didaftarkan '
                    'pada routes di dalam MaterialApp.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  height: 1.4,
                ),
              ),

              const SizedBox(height: 24),

              Center(
                child: Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2F5F8),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.beach_access,
                      size: 115,
                      color: Color(0xFF0784C7),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              const Text(
                'Untuk menutup halaman dan kembali ke halaman '
                    'utama, gunakan Navigator.pop(). Perintah ini '
                    'akan menghapus halaman tujuan dari tumpukan '
                    'navigasi sehingga halaman sebelumnya muncul '
                    'kembali.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  height: 1.4,
                ),
              ),

              const Spacer(),

              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0784C7),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 22,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Kembali ke home',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),

              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
