import '../database.dart';

class UserClienteTable extends SupabaseTable<UserClienteRow> {
  @override
  String get tableName => 'user_cliente';

  @override
  UserClienteRow createRow(Map<String, dynamic> data) => UserClienteRow(data);
}

class UserClienteRow extends SupabaseDataRow {
  UserClienteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserClienteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('Nome');
  set nome(String? value) => setField<String>('Nome', value);
}
