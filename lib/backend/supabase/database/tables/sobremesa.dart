import '../database.dart';

class SobremesaTable extends SupabaseTable<SobremesaRow> {
  @override
  String get tableName => 'Sobremesa';

  @override
  SobremesaRow createRow(Map<String, dynamic> data) => SobremesaRow(data);
}

class SobremesaRow extends SupabaseDataRow {
  SobremesaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SobremesaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get img => getField<String>('img');
  set img(String? value) => setField<String>('img', value);
}
