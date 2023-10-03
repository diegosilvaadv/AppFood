import '../database.dart';

class EmpromoTable extends SupabaseTable<EmpromoRow> {
  @override
  String get tableName => 'Empromo';

  @override
  EmpromoRow createRow(Map<String, dynamic> data) => EmpromoRow(data);
}

class EmpromoRow extends SupabaseDataRow {
  EmpromoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EmpromoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get valorAntigo => getField<String>('valor-antigo');
  set valorAntigo(String? value) => setField<String>('valor-antigo', value);

  String? get valorNovo => getField<String>('valor-novo');
  set valorNovo(String? value) => setField<String>('valor-novo', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get img => getField<String>('img');
  set img(String? value) => setField<String>('img', value);
}
