import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

import '../../models/parking_spot.dart';
import '../../../../Core/Theme/app_colors.dart';

class BookingConfirmationSheet extends StatefulWidget {
  final ParkingSpot spot;
  final DateTime date;
  final TimeOfDay startTime;
  final TimeOfDay endTime;
  final double totalCost;
  final double totalHours;
  final VoidCallback onConfirm;

  const BookingConfirmationSheet({
    super.key,
    required this.spot,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.totalCost,
    required this.totalHours,
    required this.onConfirm,
  });

  @override
  State<BookingConfirmationSheet> createState() =>
      _BookingConfirmationSheetState();
}

class _BookingConfirmationSheetState extends State<BookingConfirmationSheet> {
  final TextEditingController _controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 36,
            height: 4,
            decoration: BoxDecoration(
              color: const Color(0xFFE5E7EB),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const Gap(20),
          const Text(
            'Confirm Booking',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
              color: AppColors.primaryDark,
            ),
          ),
          const Gap(20),
          _SheetRow('📍 Spot', widget.spot.id),
          _SheetRow(
            '📅 Date',
            DateFormat('EEE, MMM d yyyy').format(widget.date),
          ),
          _SheetRow('🕐 From', widget.startTime.format(context)),
          _SheetRow('🕓 To', widget.endTime.format(context)),
          _SheetRow(
            '⏱ Duration',
            '${widget.totalHours.toStringAsFixed(1)} hours',
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Divider(color: AppColors.surface),
          ),
          _SheetRow(
            '💳 Total',
            '\$${widget.totalCost.toStringAsFixed(2)}',
            isTotal: true,
          ),
          const Gap(24),
          SizedBox(
            width: double.infinity,
            height: 52,
            child: ElevatedButton(
              onPressed: widget.onConfirm,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),

              child: TextButton(
                onPressed: () {
                  if (_controller.text.isEmpty) {
                    return;
                  }
                  setState(() {
                  });
                },
                child: const Text(
                  'Confirm & Pay',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          const Gap(12),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'Cancel',
              style: TextStyle(color: AppColors.textSecondary, fontSize: 14),
            ),
          ),
          const Gap(8),
        ],
      ),
    );
  }
}

class _SheetRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isTotal;

  const _SheetRow(this.label, this.value, {this.isTotal = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              color: isTotal ? AppColors.primaryDark : AppColors.textSecondary,
              fontSize: isTotal ? 16 : 14,
              fontWeight: isTotal ? FontWeight.w700 : FontWeight.w500,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: isTotal ? AppColors.primary : AppColors.primaryDark,
              fontSize: isTotal ? 20 : 14,
              fontWeight: isTotal ? FontWeight.w800 : FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
