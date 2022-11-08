import 'package:flutter/material.dart';

class RectangleButtonWithArrow extends StatelessWidget {
  const RectangleButtonWithArrow({
    super.key,
    required this.text,
    required this.onPressed,
    this.description,
  });

  final void Function() onPressed;
  final String text;
  final String? description;

  @override
  Widget build(BuildContext context) {
    final mainText = Text(
      text,
      style: const TextStyle(fontSize: 18),
    );

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 18,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: const Color.fromRGBO(255, 137, 126, 1),
        textStyle: const TextStyle(
          fontSize: 12,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        elevation: 15,
        shadowColor: const Color.fromRGBO(255, 137, 126, 0.35),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (description != null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                mainText,
                const SizedBox(
                  height: 5,
                ),
                Text(
                  description!,
                  style: const TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ],
            )
          else
            mainText,
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 44,
            width: 44,
            child: const Icon(
              Icons.arrow_forward,
              size: 20,
              color: Color.fromRGBO(255, 137, 126, 1),
            ),
          ),
        ],
      ),
    );
  }
}
