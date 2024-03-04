import 'dart:io';
import 'service/kebunService.dart';

void main(List<String> arguments) {
  KebunService kebunService = KebunService();

  bool exit = false;

  do {
    print('''
    -- sistem manajemen hasil perkebunan --
    pilih menu
    1. tampilkan data hasil perkebunan
    2. tambahkan data hasil perkebunan
    3. perbarui data hasil perkebunan
    4. hapus data hasil perkebunan
    5. keluar
    ''');

    stdout.write('pilihan menu: ');
    var pilihanMenu = stdin.readLineSync();

    switch (pilihanMenu) {
      case '1':
        kebunService.showData();
        break;
      case '2':
        kebunService.insertData();
        break;
      case '3':
        kebunService.updateData();
        break;
      case '4':
        kebunService.deleteData();
        break;
      case '5':
        exit = true;
        print('Keluar dari aplikasi manajemen hasil kebun. Sampai jumpa!');
        break;
      default:
        print('Pilihan menu tidak valid.');
    }
  } while (!exit);
}
