import '../models/hasilPanen.dart';
import '../models/detailPanen.dart';

List<HasilPanen> hasilPanenList = [];

class KebunService {
  void insertData() {}
  void showData() {
    hasilPanenList.add(HasilPanen(1, "Waktu Panen 1", "Sayuran", [
      DetailPanen("Wortel", "50 kg").toMap(),
      DetailPanen("Tomat", "30 kg").toMap(),
    ]));

    hasilPanenList.add(HasilPanen(2, "Waktu Panen 2", "Sayuran", [
      DetailPanen("Kentang", "40 kg").toMap(),
      DetailPanen("Cabai", "25 kg").toMap(),
    ]));

    hasilPanenList.add(HasilPanen(3, "Waktu Panen 3", "Buah-buahan", [
      DetailPanen("Jeruk", "100 kg").toMap(),
      DetailPanen("Apel", "80 kg").toMap(),
    ]));

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

  void deleteData() {}
  void updateData() {}
}
