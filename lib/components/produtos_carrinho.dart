import 'package:flutter/material.dart';

class ProdutosCarrinho extends StatefulWidget {
  @override
  _ProdutosCarrinhoState createState() => _ProdutosCarrinhoState();
}

class _ProdutosCarrinhoState extends State<ProdutosCarrinho> {
  var produtos_carrinho = [
    {
      "name": "Blazer",
      "picture": "assets/produtos/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "black",
      "quantidade": 1,
    },
    {
      "name": "Shoes",
      "picture": "assets/produtos/hills1.jpeg",
      "price": 50,
      "size": "7",
      "color": "red",
      "quantidade": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: produtos_carrinho.length,
      itemBuilder: (context, index) {
        return Single_produto_carrinho(
          carrinho_prod_name: produtos_carrinho[index]["name"],
          carrinho_prod_color: produtos_carrinho[index]["color"],
          carrinho_prod_quantidade: produtos_carrinho[index]["quantidade"],
          carrinho_prod_size: produtos_carrinho[index]["size"],
          carrinho_prod_price: produtos_carrinho[index]["price"],
          carrinho_prod_picture: produtos_carrinho[index]["picture"],
        );
      },
    );
  }
}

class Single_produto_carrinho extends StatelessWidget {
  final carrinho_prod_name;
  final carrinho_prod_picture;
  final carrinho_prod_price;
  final carrinho_prod_size;
  final carrinho_prod_color;
  final carrinho_prod_quantidade;

  Single_produto_carrinho(
      {this.carrinho_prod_name,
      this.carrinho_prod_picture,
      this.carrinho_prod_price,
      this.carrinho_prod_size,
      this.carrinho_prod_color,
      this.carrinho_prod_quantidade});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          carrinho_prod_picture,
          width: 60,
          height: 60,
        ),
        title: Text(carrinho_prod_name),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Text("Tamanho:"),
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Text(
                    carrinho_prod_size,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 8, 8, 8),
                  child: Text("Cor:"),
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Text(
                    carrinho_prod_color,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\$${carrinho_prod_price}",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
