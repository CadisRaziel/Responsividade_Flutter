import 'package:flutter/material.dart';
import 'package:web/shared/themes/app_images.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        AppImages.logo,
        fit: BoxFit.contain,
      ),
      actions: [
         IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
         IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_rounded,
            ),
          ),     
          //* PopupMenuButton = para criar o menu do lado o icone de procurar
          PopupMenuButton<String>(
            onSelected: (value) {
              ///[aqui podemos fazer um switch e adicionar as telas de cada um]
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text('Cadastrar'),     
                  value: 'Cadastrar',             
                ),
                PopupMenuItem(
                  child: Text('Entrar'),  
                  value: 'Entrar',                
                ),
                PopupMenuItem(
                  child: Text('Dúvidas'),         
                  value: 'Duvidas',        
                ),
         
              ];
            },
          ),
      ],
    );
  }
}
