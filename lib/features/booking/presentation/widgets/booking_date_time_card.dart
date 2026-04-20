import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import '../../../../Core/Theme/app_colors.dart';

class BookingDateTimeCard extends StatelessWidget {
  final DateTime selectedDate;
  final TimeOfDay selectedStartTime;
  final TimeOfDay selectedEndTime;
  final VoidCallback onPickDate;
  final VoidCallback onPickStartTime;
  final VoidCallback onPickEndTime;

  const BookingDateTimeCard({
    super.key,
    required this.selectedDate,
    required this.selectedStartTime,
    required this.selectedEndTime,
    required this.onPickDate,
    required this.onPickStartTime,
    required this.onPickEndTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.07),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          _BookingPickerRow(
            icon: Icons.calendar_month_rounded,
            label: 'Date',
            value: DateFormat('EEE, MMM d yyyy').format(selectedDate),
            onTap: onPickDate,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Divider(color: AppColors.surface),
          ),
          Row(
            children: [
              Expanded(
                child: _BookingPickerRow(
                  icon: Icons.access_time_rounded,
                  label: 'Start',
                  value: selectedStartTime.format(context),
                  onTap: onPickStartTime,
                ),
              ),
              const Gap(8),
              Container(width: 1, height: 40, color: AppColors.surface),
              const Gap(8),
              Expanded(
                child: _BookingPickerRow(
                  icon: Icons.access_time_filled_rounded,
                  label: 'End',
                  value: selectedEndTime.format(context),
                  onTap: onPickEndTime,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _BookingPickerRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final VoidCallback onTap;

  const _BookingPickerRow({
    required this.icon,
    required this.label,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
        child: Row(
          children: [
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, color: AppColors.primary, size: 17),
            ),
            const Gap(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 11,
                    color: AppColors.textSecondary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Gap(2),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.primaryDark,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.chevron_right_rounded,
              color: AppColors.textSecondary,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
