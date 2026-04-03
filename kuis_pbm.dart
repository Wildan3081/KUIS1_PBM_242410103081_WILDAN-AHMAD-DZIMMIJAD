import 'dart:io';

void main() {
  print('╔══════════════════════════════╗');
  print('║     KALKULATOR SEDERHANA     ║');
  print('║       Dart Programming       ║');
  print('╚══════════════════════════════╝');
  for (int sesi = 1; sesi <= 100; sesi++) {
    print('\n--- Sesi Perhitungan ke-$sesi ---');
    print('Pilih operasi:');
    print('  1. Penjumlahan  (+)');
    print('  2. Pengurangan  (-)');
    print('  3. Perkalian    (*)');
    print('  4. Pembagian    (/)');
    print('  5. Modulus      (%)');
    print('  0. Keluar');
    stdout.write('Masukkan pilihan: ');

    String? inputPilihan = stdin.readLineSync();
    int pilihan = int.tryParse(inputPilihan ?? '') ?? -1;

    if (pilihan == 0) {
      print('\nTerima kasih telah menggunakan Kalkulator Sederhana!');
      break;
    } else if (pilihan < 0 || pilihan > 5) {
      print('Pilihan tidak valid! Silakan coba lagi.');
      continue;
    }

    stdout.write('Masukkan angka pertama : ');
    double? angka1 = double.tryParse(stdin.readLineSync() ?? '');

    stdout.write('Masukkan angka kedua   : ');
    double? angka2 = double.tryParse(stdin.readLineSync() ?? '');

    if (angka1 == null || angka2 == null) {
      print('Input tidak valid! Masukkan angka yang benar.');
      continue;
    }

    double hasil = 0;
    String operasi = '';

    if (pilihan == 1) {
      hasil = angka1 + angka2;
      operasi = '+';
    } else if (pilihan == 2) {
      hasil = angka1 - angka2;
      operasi = '-';
    } else if (pilihan == 3) {
      hasil = angka1 * angka2;
      operasi = '*';
    } else if (pilihan == 4) {
      if (angka2 == 0) {
        print('Error: Tidak bisa membagi dengan nol!');
        continue;
      }
      hasil = angka1 / angka2;
      operasi = '/';
    } else if (pilihan == 5) {
      if (angka2 == 0) {
        print('Error: Tidak bisa modulus dengan nol!');
        continue;
      }
      hasil = angka1 % angka2;
      operasi = '%';
    }

    print('\n┌─────────────────────────────┐');
    print('│  $angka1 $operasi $angka2 = $hasil');
    print('└─────────────────────────────┘');

    stdout.write('nHitung lagi? (y/n): ');
    String? lanjut = stdin.readLineSync();

    if (lanjut?.toLowerCase() != 'y') {
      print('\nTerima kasih telah menggunakan Kalkulator Saya!');
      break;
    }
  }
}
