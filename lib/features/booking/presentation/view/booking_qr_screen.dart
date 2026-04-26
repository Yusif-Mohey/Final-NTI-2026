import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/Theme/app_colors.dart';
import '../../models/parking_spot.dart';
import 'package:gap/gap.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../../session/models/booking_history.dart';
import '../../../session/services/booking_history_service.dart';

class BookingQrScreen extends StatefulWidget {
  final ParkingSpot spot;
  final DateTime date;
  final TimeOfDay startTime;
  final TimeOfDay endTime;
  final double totalCost;
  final double totalHours;

  const BookingQrScreen({
    super.key,
    required this.spot,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.totalCost,
    required this.totalHours,
  });

  @override
  State<BookingQrScreen> createState() => _BookingQrScreenState();
}

class _BookingQrScreenState extends State<BookingQrScreen> {
  late Duration _remaining;
  Timer? _timer;
  late String _startTimeFormatted;
  late String _endTimeFormatted;

  String get _formattedRemaining {
    final hours = _remaining.inHours;
    final minutes = _remaining.inMinutes.remainder(60);
    final seconds = _remaining.inSeconds.remainder(60);
    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  String get _durationText {
    final hours = widget.totalHours.floor();
    final minutes = ((widget.totalHours - hours) * 60).round();
    return hours > 0
        ? '$hours h ${minutes.toString().padLeft(2, '0')} m'
        : '$minutes minutes';
  }

  String get _qrData {
    return 'spot:${widget.spot.id};date:${widget.date.toIso8601String()};from:$_startTimeFormatted;to:$_endTimeFormatted;cost:${widget.totalCost.toStringAsFixed(2)}';
  }

  String _formatTimeOfDay(TimeOfDay time) {
    final hour = time.hour.toString().padLeft(2, '0');
    final minute = time.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }

  Future<void> _saveBookingHistory() async {
    final booking = BookingHistory(
      spotId: widget.spot.id,
      date: widget.date,
      startTime: _startTimeFormatted,
      endTime: _endTimeFormatted,
      totalCost: widget.totalCost,
      totalHours: widget.totalHours,
      createdAt: DateTime.now(),
    );
    await BookingHistoryService.saveBooking(booking);
  }

  @override
  void initState() {
    super.initState();
    final totalMinutes = (widget.totalHours * 60).round();
    _remaining = Duration(minutes: totalMinutes);

    // Format times without context dependency
    _startTimeFormatted = _formatTimeOfDay(widget.startTime);
    _endTimeFormatted = _formatTimeOfDay(widget.endTime);

    // Save booking history
    _saveBookingHistory();

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remaining.inSeconds <= 0) {
        timer.cancel();
        setState(() {});
        return;
      }
      setState(() {
        _remaining = _remaining - const Duration(seconds: 1);
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text('Booking QR Code'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Your parking reservation is confirmed',
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const Gap(24),
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.06),
                    blurRadius: 18,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: QrImageView(data: _qrData, size: 220.0),
            ),
            const Gap(24),
            Text(
              'Session Timer',
              style: TextStyle(
                color: AppColors.primaryDark,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(12),
            Text(
              _remaining.inSeconds > 0 ? _formattedRemaining : 'Ended',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 44,
                fontWeight: FontWeight.w800,
              ),
            ),
            const Gap(32),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 22),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                children: [
                  _DetailRow('Time reserved', _durationText),
                  const Gap(12),
                  _DetailRow(
                    'Total price',
                    '\$${widget.totalCost.toStringAsFixed(2)}',
                  ),
                ],
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 52),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: const Text('Done'),
            ),
          ],
        ),
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  final String label;
  final String value;

  const _DetailRow(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
