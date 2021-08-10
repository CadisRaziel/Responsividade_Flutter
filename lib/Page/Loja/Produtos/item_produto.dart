import 'package:flutter/material.dart';
class ItemProduto extends StatelessWidget {
  const ItemProduto({Key? key, required this.descricao, required this.preco, this.image})
      : super(key: key);
  final String descricao;
  final String preco;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
        color: Colors.white
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: Image.asset(
              '${this.image}',
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(this.descricao),
          ),
          Expanded(
            flex: 1,
            child: Text(
              this.preco,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
