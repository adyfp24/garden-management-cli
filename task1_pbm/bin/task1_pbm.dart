import 'dart:io';
import 'service/kebunService.dart';

void main(List<String> arguments) {
  KebunService kebunService = KebunService();
  
  print('''
  -- sistem manajemen hasil perkebunan --
  pilih menu
  1. tampilkan data hasil perkebunan
  2. tambahkan data hasil perkebunan
  3. perbarui data hasil perkebunan
  4. hapus data hasil perkebunan
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
      kebunService.updateData();
      break;
    default:
  }
}
