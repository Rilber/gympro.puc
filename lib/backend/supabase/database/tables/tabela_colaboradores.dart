import '../database.dart';

class TabelaColaboradoresTable extends SupabaseTable<TabelaColaboradoresRow> {
  @override
  String get tableName => 'Tabela Colaboradores';

  @override
  TabelaColaboradoresRow createRow(Map<String, dynamic> data) =>
      TabelaColaboradoresRow(data);
}

class TabelaColaboradoresRow extends SupabaseDataRow {
  TabelaColaboradoresRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TabelaColaboradoresTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  int? get idade => getField<int>('idade');
  set idade(int? value) => setField<int>('idade', value);

  String? get sexo => getField<String>('sexo');
  set sexo(String? value) => setField<String>('sexo', value);

  int? get cep => getField<int>('cep');
  set cep(int? value) => setField<int>('cep', value);

  String? get rua => getField<String>('rua');
  set rua(String? value) => setField<String>('rua', value);

  String? get numero => getField<String>('numero');
  set numero(String? value) => setField<String>('numero', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get funcao => getField<String>('funcao');
  set funcao(String? value) => setField<String>('funcao', value);
}
