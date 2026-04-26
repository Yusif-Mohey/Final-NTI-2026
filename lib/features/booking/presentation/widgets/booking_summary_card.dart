import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import '../../../../Core/Theme/app_colors.dart';

class BookingSummaryCard extends StatelessWidget {
  final String spotId;
  final DateTime selectedDate;
  final double totalHours;
  final double totalCost;
  final String startTimeText;
  final String endTimeText;

  const BookingSummaryCard({
    super.key,
    required this.spotId,
    required this.selectedDate,
    required this.totalHours,
    required this.totalCost,
    required this.startTimeText,
    required this.endTimeText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.primary, AppColors.endGradyPrimary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.35),
            blurRadius: 16,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        children: [
          _SummaryRow('Spot', spotId),
          const Gap(8),
          _SummaryRow('Date', DateFormat('MMM d, yyyy').format(selectedDate)),
          const Gap(8),
          _SummaryRow(
            'Duration',
            '${totalHours.toStringAsFixed(1)} hrs ($startTimeText – $endTimeText)',
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Divider(color: Colors.white24, height: 1),
          ),
          _SummaryRow(
            'Total Cost',
            '\$${totalCost.toStringAsFixed(2)}',
            isTotal: true,
          ),
        ],
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isTotal;

  const _SummaryRow(this.label, this.value, {this.isTotal = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.white.withOpacity(0.75),
            fontSize: isTotal ? 15 : 13,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: Colors.white,
            fontSize: isTotal ? 18 : 13,
            fontWeight: isTotal ? FontWeight.w800 : FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
