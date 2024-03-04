import 'dart:io';

import '../models/hasilPanen.dart';
import '../models/detailPanen.dart';

class KebunService {
  List<HasilPanen> hasilPanenList = [];
  int id = 4;

  KebunService() {
    setData();
  }

  void insertData() {
    stdout.write('masukkan waktu panen : ');
    var waktuPanen = stdin.readLineSync();
    stdout.write('masukkan jenis hasil panen : ');
    var jenisPanen = stdin.readLineSync();

    List<Map<String, String?>> detailPanenList = [];
    stdout.write('masukkan nama hasil panen : ');
    var namaHasilPanen = stdin.readLineSync();
    stdout.write('masukkan jumlah hasil panen : ');
    var jumlahPanen = stdin.readLineSync();

    detailPanenList.add(DetailPanen(namaHasilPanen, jumlahPanen).toMap());
    hasilPanenList.add(HasilPanen(id, waktuPanen, jenisPanen, detailPanenList));
    showData();
  }

  void showData() {
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
    hasilPanenList.add(HasilPanen(1, "12 januari", "Sayuran", [
      DetailPanen("Wortel", "50 kg").toMap(),
    ]));

    hasilPanenList.add(HasilPanen(2, "3 maret", "Sayuran", [
      DetailPanen("Kentang", "40 kg").toMap(),
    ]));

    hasilPanenList.add(HasilPanen(3, "15 april", "Buah-buahan", [
      DetailPanen("Jeruk", "100 kg").toMap(),
    ]));
  }

  void deleteData() {
    showData();
    stdout.write('masukkan ID hasil panen yang ingin dihapus : ');
    var id = int.parse(stdin.readLineSync()!);
    int indexToDelete =
        hasilPanenList.indexWhere((hasilPanen) => hasilPanen.id == id);
    hasilPanenList.removeAt(indexToDelete);
    showData();
  }

  void updateData() {
    showData();
    stdout.write('masukkan ID hasil panen yang ingin diperbarui : ');
    var id = int.parse(stdin.readLineSync()!);

    int indexToUpdate =
        hasilPanenList.indexWhere((hasilPanen) => hasilPanen.id == id);

    if (indexToUpdate != -1) {
      // Memperbarui waktu panen
      stdout.write('masukkan waktu panen baru : ');
      var waktuPanenBaru = stdin.readLineSync();
      hasilPanenList[indexToUpdate].waktuPanen = waktuPanenBaru;

      // Memperbarui jenis panen
      stdout.write('masukkan jenis hasil panen baru : ');
      var jenisPanenBaru = stdin.readLineSync();
      hasilPanenList[indexToUpdate].jenisPanen = jenisPanenBaru;

      if (hasilPanenList[indexToUpdate].detailPanen.isNotEmpty) {
        stdout.write('masukkan nama hasil panen baru : ');
        var namaPanenBaru = stdin.readLineSync();
        stdout.write('masukkan jumlah hasil panen baru : ');
        var jumlahPanenBaru = stdin.readLineSync();

        // Menggunakan setter untuk memperbarui nilai properti nama dan jumlah
        hasilPanenList[indexToUpdate].detailPanen[0]['nama'] = namaPanenBaru;
        hasilPanenList[indexToUpdate].detailPanen[0]['jumlah'] =
            jumlahPanenBaru;
      }

      print('Data berhasil diperbarui.');
    } else {
      print('ID hasil panen tidak ditemukan.');
    }

    showData();
  }
}
