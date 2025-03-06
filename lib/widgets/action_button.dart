import 'package:flutter/material.dart';
import 'package:movie_app/helpers/get_color_opacity.dart';
import 'package:movie_app/models/action_button_model.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.model});
  final ActionButtonModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: model.onTap,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: getColorOpacity(Colors.white, 0.2),
        ),
        child: Center(child: Icon(model.icon, color: Colors.white, size: 20)),
      ),
    );
  }
}
