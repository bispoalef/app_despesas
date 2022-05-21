import 'package:app_despesas/components/transactionForm.dart';
import 'package:app_despesas/components/transation_list.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({Key? key}) : super(key: key);

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  var tituloController = TextEditingController();
  var valorController = TextEditingController();
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tenis de corrida',
      value: 310.75,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(transations: _transactions),
        TransactionForm(
          titulocontroller: tituloController,
          valorcontroller: valorController,
        ),
      ],
    );
  }
}