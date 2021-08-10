import 'package:flutter/material.dart';
import 'package:web/shared/themes/app_images.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image.asset(
            AppImages.logo,
            fit: BoxFit.contain,
          ),
          Expanded(
            child: Container(),
          ),
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
          SizedBox(
            width: 5,
          ),
          ElevatedButton(
            style: ButtonStyle(
              shadowColor: MaterialStateProperty.all(Colors.black),
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: BorderSide(color: Colors.green)),
              ),
            ),
            onPressed: () {},
            child: Text('Cadastrar'),
          ),
          SizedBox(
            width: 5,
          ),
          ElevatedButton(
            style: ButtonStyle(
              shadowColor: MaterialStateProperty.all(Colors.black),
              backgroundColor: MaterialStateProperty.all(Colors.orange),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: BorderSide(color: Colors.green)),
              ),
            ),
            onPressed: () {},
            child: Text('Entrar'),
          ),
        ],
      ),
    );
  }
}
