import './detailPanen.dart';

class HasilPanen{
  int? id;
  String? jenisPanen;
  String? waktuPanen;
  List<Map<String, String?>> detailPanen;

  HasilPanen(this.id, this.waktuPanen, this.jenisPanen, this.detailPanen);
}