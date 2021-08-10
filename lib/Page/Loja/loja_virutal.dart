import 'package:flutter/material.dart';
import 'package:web/Page/Loja/Produtos/item_produto.dart';
import 'package:web/Page/Loja/Widget/mobile_appBar.dart';
import 'package:web/Page/Loja/Widget/web_appBar.dart';
import 'package:web/shared/themes/app_images.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({
    Key? key,
  }) : super(key: key);

  @override
  _LojaVirtualState createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {

  //* breakpoint de telas...
  _ajustarVisualizcao(double larguraTela) {
    int colunas = 2;
    if (larguraTela <= 600) {
      colunas = 2;
    } else if (larguraTela <= 960) {
      colunas = 4;
    } else {
      colunas = 6;
    }
    return colunas;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        var largura = constraint.maxWidth;
        var alturaBarra = AppBar().preferredSize.height;

        return Scaffold(
          appBar: largura < 600
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(largura, alturaBarra),
                )
              : PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(largura, alturaBarra),
                ),
          body: Padding(
            padding: EdgeInsets.all(16),
            child: GridView.count(
              crossAxisCount: _ajustarVisualizcao(largura),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: [
                ItemProduto(
                  descricao: 'Multimidia Pionner',
                  preco: 'R\$ 500,00',   
                  image: 'assets/images/p1.jpg',              
                ),
                ItemProduto(
                  descricao: 'Pneu GoodYear R16',
                  preco: 'R\$ 258,00',          
                  image: 'assets/images/p2.jpg',        
                ),
                ItemProduto(
                  descricao: 'Galaxy 9',
                  preco: 'R\$ 2500,00',     
                  image: 'assets/images/p3.jpg',             
                ),
                ItemProduto(
                  descricao: 'Iphone XR',
                  preco: 'R\$ 6000,00',   
                  image: 'assets/images/p4.jpg',               
                ),
                ItemProduto(
                  descricao: 'Samsung A10',
                  preco: 'R\$ 900,00', 
                  image: 'assets/images/p5.jpg',                 
                ),
                ItemProduto(
                  descricao: 'Iphone 7 Plus',
                  preco: 'R\$ 1800,00',  
                  image: 'assets/images/p6.jpg',                
                ),
                  ItemProduto(
                  descricao: 'Multimidia Pionner',
                  preco: 'R\$ 500,00',   
                  image: 'assets/images/p1.jpg',              
                ),
                ItemProduto(
                  descricao: 'Pneu GoodYear R16',
                  preco: 'R\$ 258,00',          
                  image: 'assets/images/p2.jpg',        
                ),
                ItemProduto(
                  descricao: 'Galaxy 9',
                  preco: 'R\$ 2500,00',     
                  image: 'assets/images/p3.jpg',             
                ),
                ItemProduto(
                  descricao: 'Iphone XR',
                  preco: 'R\$ 6000,00',   
                  image: 'assets/images/p4.jpg',               
                ),
                ItemProduto(
                  descricao: 'Samsung A10',
                  preco: 'R\$ 900,00', 
                  image: 'assets/images/p5.jpg',                 
                ),
                ItemProduto(
                  descricao: 'Iphone 7 Plus',
                  preco: 'R\$ 1800,00',  
                  image: 'assets/images/p6.jpg',                
                ),
                  ItemProduto(
                  descricao: 'Multimidia Pionner',
                  preco: 'R\$ 500,00',   
                  image: 'assets/images/p1.jpg',              
                ),
                ItemProduto(
                  descricao: 'Pneu GoodYear R16',
                  preco: 'R\$ 258,00',          
                  image: 'assets/images/p2.jpg',        
                ),
                ItemProduto(
                  descricao: 'Galaxy 9',
                  preco: 'R\$ 2500,00',     
                  image: 'assets/images/p3.jpg',             
                ),
                ItemProduto(
                  descricao: 'Iphone XR',
                  preco: 'R\$ 6000,00',   
                  image: 'assets/images/p4.jpg',               
                ),
                ItemProduto(
                  descricao: 'Samsung A10',
                  preco: 'R\$ 900,00', 
                  image: 'assets/images/p5.jpg',                 
                ),
                ItemProduto(
                  descricao: 'Iphone 7 Plus',
                  preco: 'R\$ 1800,00',  
                  image: 'assets/images/p6.jpg',                
                ),
                  ItemProduto(
                  descricao: 'Multimidia Pionner',
                  preco: 'R\$ 500,00',   
                  image: 'assets/images/p1.jpg',              
                ),
                ItemProduto(
                  descricao: 'Pneu GoodYear R16',
                  preco: 'R\$ 258,00',          
                  image: 'assets/images/p2.jpg',        
                ),
                ItemProduto(
                  descricao: 'Galaxy 9',
                  preco: 'R\$ 2500,00',     
                  image: 'assets/images/p3.jpg',             
                ),
                ItemProduto(
                  descricao: 'Iphone XR',
                  preco: 'R\$ 6000,00',   
                  image: 'assets/images/p4.jpg',               
                ),
                ItemProduto(
                  descricao: 'Samsung A10',
                  preco: 'R\$ 900,00', 
                  image: 'assets/images/p5.jpg',                 
                ),
                ItemProduto(
                  descricao: 'Iphone 7 Plus',
                  preco: 'R\$ 1800,00',  
                  image: 'assets/images/p6.jpg',                
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
