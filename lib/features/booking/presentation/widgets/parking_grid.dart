import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../models/parking_spot.dart';
import 'parking_spot_tile.dart';
import '../../../../Core/Theme/app_colors.dart';

class ParkingGrid extends StatelessWidget {
  final List<ParkingSpot> spots;
  final ValueChanged<ParkingSpot> onSpotTap;

  const ParkingGrid({super.key, required this.spots, required this.onSpotTap});

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
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 6),
            decoration: BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Text(
                '⬇  ENTRANCE',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          ),
          const Gap(14),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: spots
                      .sublist(0, 6)
                      .map(
                        (spot) => ParkingSpotTile(
                          spot: spot,
                          onTap: () => onSpotTap(spot),
                        ),
                      )
                      .toList(),
                ),
              ),
              Container(
                width: 28,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    for (int i = 0; i < 6; i++)
                      Container(
                        height: 48,
                        margin: const EdgeInsets.only(bottom: 6),
                        child: i == 2
                            ? const Icon(
                                Icons.arrow_downward_rounded,
                                color: Color(0xFFD1D5DB),
                                size: 16,
                              )
                            : const SizedBox(),
                      ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: spots
                      .sublist(6, 12)
                      .map(
                        (spot) => ParkingSpotTile(
                          spot: spot,
                          onTap: () => onSpotTap(spot),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
