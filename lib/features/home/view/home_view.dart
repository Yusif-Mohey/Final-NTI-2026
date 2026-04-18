import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:line_icons/line_icon.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF773fff),
        borderRadius: BorderRadius.circular(20),
      ),
      height: 150,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Location',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),

                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: LineIcon(
                    Icons.navigation_sharp,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ],
            ),
            Gap(20),

            /// use the custom TextFormField here
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'search',
                prefixIcon: Icon(Icons.search, size: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
