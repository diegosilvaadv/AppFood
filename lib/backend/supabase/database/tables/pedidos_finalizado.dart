import '../database.dart';

class PedidosFinalizadoTable extends SupabaseTable<PedidosFinalizadoRow> {
  @override
  String get tableName => 'pedidos_finalizado';

  @override
  PedidosFinalizadoRow createRow(Map<String, dynamic> data) =>
      PedidosFinalizadoRow(data);
}

class PedidosFinalizadoRow extends SupabaseDataRow {
  PedidosFinalizadoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PedidosFinalizadoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nomeCliente => getField<String>('nome_cliente');
  set nomeCliente(String? value) => setField<String>('nome_cliente', value);

  String? get nMesa => getField<String>('n_mesa');
  set nMesa(String? value) => setField<String>('n_mesa', value);

  String? get pagamento => getField<String>('pagamento');
  set pagamento(String? value) => setField<String>('pagamento', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  String? get pedido => getField<String>('pedido');
  set pedido(String? value) => setField<String>('pedido', value);

  double? get quanty => getField<double>('quanty');
  set quanty(double? value) => setField<double>('quanty', value);

  String? get img => getField<String>('img');
  set img(String? value) => setField<String>('img', value);

  double? get nPedido => getField<double>('n_pedido');
  set nPedido(double? value) => setField<double>('n_pedido', value);
}
