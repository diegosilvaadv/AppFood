import '../database.dart';

class BebidasTable extends SupabaseTable<BebidasRow> {
  @override
  String get tableName => 'Bebidas';

  @override
  BebidasRow createRow(Map<String, dynamic> data) => BebidasRow(data);
}

class BebidasRow extends SupabaseDataRow {
  BebidasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BebidasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get valor => getField<String>('valor');
  set valor(String? value) => setField<String>('valor', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get img => getField<String>('img');
  set img(String? value) => setField<String>('img', value);
}
