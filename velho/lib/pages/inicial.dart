import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommerce/components/horizontal_listview.dart';
import 'package:ecommerce/components/produtos.dart';
import 'package:ecommerce/pages/carrinho.dart';
import 'package:flutter/material.dart';

class Inicial extends StatefulWidget {
  @override
  _InicialState createState() => _InicialState();
}

class _InicialState extends State<Inicial> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage("assets/c1.jpg"),
            AssetImage("assets/m1.jpeg"),
            AssetImage("assets/w3.jpeg"),
            AssetImage("assets/w4.jpeg"),
            AssetImage("assets/w1.jpeg"),
          ],
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
          dotSize: 4.0,
          indicatorBgPadding: 2.0,
          dotBgColor: Colors.transparent),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        title: Text("ShopApp"),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Carrinho()));
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Matheus Reichert"),
              accountEmail: Text("matheusrei111@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.red),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home Page"),
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Minha Conta"),
                leading: Icon(Icons.person, color: Colors.red),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Minhas Compras"),
                leading: Icon(Icons.shopping_basket, color: Colors.red),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Carrinho()));
              },
              child: ListTile(
                title: Text("Carrinho"),
                leading: Icon(Icons.shopping_cart, color: Colors.red),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favoritos"),
                leading: Icon(Icons.favorite, color: Colors.red),
              ),
            ),
            Divider(
              color: Colors.red,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Configurações"),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Logout"),
                leading: Icon(Icons.exit_to_app),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          image_carousel,
          Padding(
            padding: EdgeInsets.all(8),
            child: Text("Categorias"),
          ),
          HorizontalList(),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text("Produtos Recentes"),
          ),
          Container(
            height: 320,
            child: Produtos(),
          )
        ],
      ),
    );
  }
}
