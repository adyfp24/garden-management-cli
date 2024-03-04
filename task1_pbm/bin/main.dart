import 'dart:io';

void main(){
  List<String?> hasilPanen = ['wortel', 'kangkung', 'sawi'];
  hasilPanen[0] = 'bukan wortel';
  Map<String, String> detailPanen = {
    'nama' : 'wortel',
    'jumlah' : '20 ikat',
  };

  // stdout.write('masukkan sayur :');
  // var sayuranBaru = stdin.readLineSync();
  // hasilPanen.add(sayuranBaru);

  // stdout.write('sayur yang ingin dihapus :');
  // var hapusSayur = stdin.readLineSync();
  
  // hasilPanen.remove(hapusSayur);

  detailPanen.addAll({'jenis' : 'sayuran'});
  detailPanen.remove('nama');
  detailPanen.update('jumlah', (value) => '30 ikat');
  print(hasilPanen);
  print(detailPanen);
}

