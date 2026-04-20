import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/booking/presentation/widgets/booking_info_card.dart';
import 'package:flutter_application_1/features/booking/presentation/widgets/booking_legend.dart';
import 'package:gap/gap.dart';
import '../../models/parking_spot.dart';
import '../widgets/booking_book_button.dart';
import '../widgets/booking_date_time_card.dart';
import '../widgets/booking_header.dart';
import '../widgets/booking_summary_card.dart';
import '../widgets/booking_vehicle_info.dart';
import '../widgets/confirmation_sheet.dart';
import '../widgets/parking_grid.dart';
import '../../../../Core/Theme/app_colors.dart';

class BookingView extends StatefulWidget {
  const BookingView({super.key});

  @override
  State<BookingView> createState() => _BookingViewState();
}

class _BookingViewState extends State<BookingView> {
  ParkingSpot? _selectedSpot;
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedStartTime = TimeOfDay.now();
  TimeOfDay _selectedEndTime = TimeOfDay(
    hour: (TimeOfDay.now().hour + 2) % 24,
    minute: TimeOfDay.now().minute,
  );

  final List<ParkingSpot> _spots = [
    ParkingSpot(id: 'P01', status: SpotStatus.available),
    ParkingSpot(id: 'P02', status: SpotStatus.occupied),
    ParkingSpot(id: 'P03', status: SpotStatus.available),
    ParkingSpot(id: 'P04', status: SpotStatus.occupied),
    ParkingSpot(id: 'P05', status: SpotStatus.available),
    ParkingSpot(id: 'P06', status: SpotStatus.occupied),
    ParkingSpot(id: 'P07', status: SpotStatus.available),
    ParkingSpot(id: 'P08', status: SpotStatus.available),
    ParkingSpot(id: 'P09', status: SpotStatus.occupied),
    ParkingSpot(id: 'P10', status: SpotStatus.available),
    ParkingSpot(id: 'P11', status: SpotStatus.available),
    ParkingSpot(id: 'P12', status: SpotStatus.occupied),
  ];

  int get availableCount =>
      _spots.where((s) => s.status == SpotStatus.available).length;

  double get totalHours {
    final start = _selectedStartTime.hour * 60 + _selectedStartTime.minute;
    final end = _selectedEndTime.hour * 60 + _selectedEndTime.minute;
    final diff = end - start;
    return diff > 0 ? diff / 60.0 : 0;
  }

  double get totalCost => totalHours * 4.50;

  void _selectSpot(ParkingSpot spot) {
    if (spot.status == SpotStatus.occupied) return;

    setState(() {
      for (var s in _spots) {
        if (s.status == SpotStatus.selected) {
          s.status = SpotStatus.available;
        }
      }

      if (_selectedSpot?.id == spot.id) {
        _selectedSpot = null;
      } else {
        spot.status = SpotStatus.selected;
        _selectedSpot = spot;
      }
    });
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 30)),
      builder: (ctx, child) => Theme(
        data: ThemeData.light().copyWith(
          colorScheme: ColorScheme.light(primary: AppColors.primary),
        ),
        child: child!,
      ),
    );

    if (picked != null) {
      setState(() => _selectedDate = picked);
    }
  }

  Future<void> _pickTime({required bool isStart}) async {
    final initial = isStart ? _selectedStartTime : _selectedEndTime;

    final picked = await showTimePicker(
      context: context,
      initialTime: initial,
      builder: (ctx, child) => Theme(
        data: ThemeData.light().copyWith(
          colorScheme: const ColorScheme.light(primary: AppColors.primary),
        ),
        child: child!,
      ),
    );

    if (picked != null) {
      setState(() {
        if (isStart) {
          _selectedStartTime = picked;
        } else {
          _selectedEndTime = picked;
        }
      });
    }
  }

  void _confirmBooking() {
    if (_selectedSpot == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select a parking spot first.'),
          backgroundColor: AppColors.primary,
        ),
      );
      return;
    }

    if (totalHours <= 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('End time must be after start time.'),
          backgroundColor: Colors.redAccent,
        ),
      );
      return;
    }

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => BookingConfirmationSheet(
        spot: _selectedSpot!,
        date: _selectedDate,
        startTime: _selectedStartTime,
        endTime: _selectedEndTime,
        totalCost: totalCost,
        totalHours: totalHours,
        onConfirm: () {
          Navigator.pop(context);

          setState(() {
            _selectedSpot!.status = SpotStatus.occupied;
            _selectedSpot = null;
          });

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('🎉 Booking confirmed! Enjoy your visit.'),
              backgroundColor: AppColors.primary,
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BookingHeader(),
            const Gap(20),
            BookingInfoCard(
              availableCount: availableCount,
              totalSpots: _spots.length,
            ),
            const Gap(20),
            const Text(
              'Select Your Spot',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: AppColors.primaryDark,
                letterSpacing: -0.3,
              ),
            ),
            const Gap(12),
            ParkingGrid(spots: _spots, onSpotTap: _selectSpot),
            const Gap(8),
            const BookingLegend(),
            const Gap(20),
            const Text(
              'Choose Date & Time',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: AppColors.primaryDark,
                letterSpacing: -0.3,
              ),
            ),
            const Gap(12),
            BookingDateTimeCard(
              selectedDate: _selectedDate,
              selectedStartTime: _selectedStartTime,
              selectedEndTime: _selectedEndTime,
              onPickDate: _pickDate,
              onPickStartTime: () => _pickTime(isStart: true),
              onPickEndTime: () => _pickTime(isStart: false),
            ),
            if (_selectedSpot != null) ...[
              const Gap(20),
              const Text(
                'Summary',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primaryDark,
                  letterSpacing: -0.3,
                ),
              ),
              const Gap(12),
              BookingSummaryCard(
                spotId: _selectedSpot!.id,
                selectedDate: _selectedDate,
                totalHours: totalHours,
                totalCost: totalCost,
                startTimeText: _selectedStartTime.format(context),
                endTimeText: _selectedEndTime.format(context),
              ),
            ],
            const Gap(20),
            BookingBookButton(onPressed: _confirmBooking),
            const Gap(28),
            const BookingVehicleInfo(),
            const Gap(24),
          ],
        ),
      ),
    );
  }
}
