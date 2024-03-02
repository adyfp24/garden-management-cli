class DetailPanen {
  final String nama;
  final String jumlah;

  DetailPanen(this.nama, this.jumlah);

  Map<String, String> toMap() {
    return {
      'nama': nama,
      'jumlah': jumlah,
    };
  }

  DetailPanen.fromMap(Map<String, String> map)
      : nama = map['nama'] ?? '',
        jumlah = map['jumlah'] ?? '';
}
