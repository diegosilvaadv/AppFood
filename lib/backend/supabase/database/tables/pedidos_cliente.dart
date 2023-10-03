import '../database.dart';

class PedidosClienteTable extends SupabaseTable<PedidosClienteRow> {
  @override
  String get tableName => 'Pedidos_cliente';

  @override
  PedidosClienteRow createRow(Map<String, dynamic> data) =>
      PedidosClienteRow(data);
}

class PedidosClienteRow extends SupabaseDataRow {
  PedidosClienteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PedidosClienteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nomeCliente => getField<String>('nome_cliente');
  set nomeCliente(String? value) => setField<String>('nome_cliente', value);

  int? get nMesa => getField<int>('n_mesa');
  set nMesa(int? value) => setField<int>('n_mesa', value);

  String? get pagamento => getField<String>('pagamento');
  set pagamento(String? value) => setField<String>('pagamento', value);
}
