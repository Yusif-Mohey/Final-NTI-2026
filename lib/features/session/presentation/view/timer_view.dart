import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/session/presentation/widgets/active_service_card.dart';
import 'package:flutter_application_1/features/session/presentation/widgets/custom_btn.dart';
import 'package:flutter_application_1/features/session/presentation/widgets/info_card.dart';
import 'package:flutter_application_1/features/session/presentation/widgets/spot_card.dart';
import 'package:flutter_application_1/features/session/presentation/widgets/timer_section.dart';
import 'package:gap/gap.dart';

class TimerView extends StatefulWidget {
  const TimerView({super.key});

  @override
  State<TimerView> createState() => _TimerViewState();
}

class _TimerViewState extends State<TimerView> {
  final CountDownController _controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TimerSection(controller: _controller),
            Gap(30),
            SpotCard(),
            Gap(16),
            ActiveServiceCard(),
            Gap(16),
            InfoRow(),
            Gap(20),
            ButtonsSection(
              onStart: () => _controller.start(),
              onStop: () => _controller.pause(),
            ),
          ],
        ),
      ),
    );
  }
}
