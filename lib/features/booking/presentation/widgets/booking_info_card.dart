import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../Core/Theme/app_colors.dart';

class BookingInfoCard extends StatelessWidget {
  final int availableCount;
  final int totalSpots;

  const BookingInfoCard({
    super.key,
    required this.availableCount,
    required this.totalSpots,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.08),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'John Doe',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: AppColors.primaryDark,
              letterSpacing: -0.5,
            ),
          ),
          const Gap(20),
          Row(
            children: [
              Expanded(
                child: _BookingStatChip(
                  label: 'OCCUPANCY',
                  value: '$availableCount / $totalSpots',
                ),
              ),
              const Gap(16),
              _BookingStatusBadge(availableCount: availableCount),
            ],
          ),
        ],
      ),
    );
  }
}

class _BookingStatChip extends StatelessWidget {
  final String label;
  final String value;

  const _BookingStatChip({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 10,
            color: AppColors.textSecondary,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.8,
          ),
        ),
        const Gap(4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w800,
            color: AppColors.primaryDark,
            letterSpacing: -0.5,
          ),
        ),
      ],
    );
  }
}

class _BookingStatusBadge extends StatelessWidget {
  final int availableCount;

  const _BookingStatusBadge({required this.availableCount});

  @override
  Widget build(BuildContext context) {
    final isFull = availableCount <= 3;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: isFull ? const Color(0xFFFFF7ED) : const Color(0xFFF0FDF4),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(
            Icons.circle,
            size: 8,
            color: isFull ? Colors.orange : Colors.green,
          ),
          const Gap(6),
          Text(
            isFull ? 'Near Full' : 'Available',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: isFull ? Colors.orange : Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
