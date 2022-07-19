import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  //Defina essas propriedades para nossa classe 'Button'

  final color;
  final textColor;
  final String buttonText;
  final buttontapped;

  //Faça aqui um construtor para receber via parametro
  // e popular nossas propriedade
  Button({
    required this.color,
    required this.textColor,
    required this.buttonText,
    this.buttontapped,
  });
  //Abaixo temos o comentario
  // indicando onde cada propriedade devera ir

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttontapped,
      child: Padding(
        padding: EdgeInsets.all(4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                    color: textColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
