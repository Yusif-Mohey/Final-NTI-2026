import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class InfoRow extends StatelessWidget {
  const InfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: InfoCard("PLATE NUMBER", "ABC-1234")),
        Gap(10),
        Expanded(child: InfoCard("CURRENT FEE", "\$12.50")),
      ],
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String value;

  const InfoCard(this.title, this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(title, style: const TextStyle(fontSize: 10, color: Colors.grey)),
          const SizedBox(height: 5),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
