import './detailPanen.dart';

class HasilPanen{
  final int id;
  final String jenisPanen;
  final String waktuPanen;
  final List<Map<String, String>> detailPanen;

  HasilPanen(this.id, this.waktuPanen, this.jenisPanen, this.detailPanen);
}