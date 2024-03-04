import 'dart:io';

import '../models/hasilPanen.dart';
import '../models/detailPanen.dart';

class KebunService {
  List<HasilPanen> hasilPanenList = [];
  int id = 1;

  void insertData() {
    stdout.write('masukkan waktu panen: ');
    var waktuPanen = stdin.readLineSync();
    stdout.write('masukkan jenis hasil panen: ');
    var jenisPanen = stdin.readLineSync();

    List<Map<String, String?>> detailPanenList = [];
    stdout.write('masukkan nama hasil panen: ');
    var namaHasilPanen = stdin.readLineSync();
    stdout.write('masukkan jumlah hasil panen: ');
    var jumlahPanen = stdin.readLineSync();

    detailPanenList.add(DetailPanen(namaHasilPanen, jumlahPanen).toMap());
    print(detailPanenList);

    hasilPanenList.add(HasilPanen(id, waktuPanen, jenisPanen, detailPanenList));
    id++;
    showData();
  }

  void showData() {
    setData();
    print("Data hasil panen:");

    for (var hasilPanen in hasilPanenList) {
      print("ID: ${hasilPanen.id}");
      print("Waktu Panen: ${hasilPanen.waktuPanen}");
      print("Jenis Panen: ${hasilPanen.jenisPanen}");

      if (hasilPanen.detailPanen.isNotEmpty) {
        print("Detail Panen:");
        for (var detail in hasilPanen.detailPanen) {
          print("  - nama: ${detail['nama']}, jumlah: ${detail['jumlah']}");
        }
      } else {
        print("Tidak ada detail panen.");
      }

      print("\n");
    }
  }

  void setData() {
    hasilPanenList.add(HasilPanen(1, "Waktu Panen 1", "Sayuran", [
      DetailPanen("Wortel", "50 kg").toMap(),
    ]));

    hasilPanenList.add(HasilPanen(2, "Waktu Panen 2", "Sayuran", [
      DetailPanen("Kentang", "40 kg").toMap(),
    ]));

    hasilPanenList.add(HasilPanen(3, "Waktu Panen 3", "Buah-buahan", [
      DetailPanen("Jeruk", "100 kg").toMap(),
    ]));
  }

  void deleteData() {}
  void updateData() {}
}
