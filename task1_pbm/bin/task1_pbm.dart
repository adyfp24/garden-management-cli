import 'dart:io';

List<String> hasilPanen = ['bayam', 'kangkung', 'selada', 'pakcoy', 'sawi'];
Map<String, String> detailPanen = {
  'bayam' : '46 ikat',
  'kangkung' : '30 ikat',
  'selada' : '55 ikat',
  'pakcoy' : '10 ikat',
  'sawi' : '46 ikat'
};

void main(List<String> arguments) {
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
      showData();
      break;
    case '2':
      insertData();
      break;
    case '3':
      updateData();
      break;
    case '4':
      deleteData();
      break;
    default:
  }
}

void showData() {
  detailPanen.remove('selada');
  print(hasilPanen[2]);
  detailPanen.addAll({'selada' : '55 ikat'});
  print(detailPanen['selada']);
}

void insertData() {
  print('hahaha 2');
}
  
void updateData() {
  print('hahaha 3');
}

void deleteData() {
  print('hahaha 4');
}
