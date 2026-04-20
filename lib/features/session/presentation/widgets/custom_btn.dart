import 'package:flutter/material.dart';

class ButtonsSection extends StatelessWidget {
  final VoidCallback onStart;
  final VoidCallback onStop;

  const ButtonsSection({
    super.key,
    required this.onStart,
    required this.onStop,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onStart,
          child: Container(
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xff7B61FF), Color(0xff9C8CFF)],
              ),
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Center(
              child: Text(
                "Extend Time",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        GestureDetector(
          onTap: onStop,
          child: Container(
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Center(
              child: Text(
                "End Session",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
