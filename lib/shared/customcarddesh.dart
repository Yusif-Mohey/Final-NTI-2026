//

import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  const BaseCard({
    super.key,
    required this.child,
    this.gradient,
    this.color,
    required this.pagging, required this.hight, required this.width,

  });
  final Widget child;
  final List<Color>? gradient;
  final Color? color;
  final EdgeInsets pagging;
 final double hight;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
     
      height: hight,
      width: width,
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: pagging,
      decoration: BoxDecoration(

        color: gradient == null ? color ?? Colors.grey.shade300 : null,
        gradient: gradient != null ? LinearGradient(colors: gradient!) : null,
        borderRadius: BorderRadius.circular(20),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: child,
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/Core/Theme/app_colors.dart';
// import 'package:flutter_application_1/shared/custom_app_button.dart';

// import 'package:flutter_application_1/shared/custom_text.dart';
// import 'package:gap/gap.dart';

// class Customcarddesh extends StatelessWidget {
//   const Customcarddesh({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: AppColors.primary,

//         borderRadius: BorderRadius.circular(50),
//       ),
//       height: 400,
//       width: 600,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 TextButton(
//                   autofocus: true,
//                   onPressed: () {},
//                   child: Text(
//                     'Grand plaza Premium',
//                     style: TextStyle(color: AppColors.surface, fontSize: 20),
//                   ),
//                 ),
//                 Spacer(),
//                 Column(
//                   children: [
//                     Gap(5),
//                     CustomText(
//                       text: 'Remaining',
//                       color: AppColors.surface,
//                       fontSize: 25,
//                     ),
//                     Gap(3),
//                     CustomText(
//                       text: '01:24:08',
//                       color: AppColors.surface,
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ],
//                 ),
//                 // Gap(20),
//               ],
//             ),

//             Align(
//               alignment: Alignment.topLeft,
//               child: CustomText(
//                 text: 'Current',
//                 color: AppColors.surface,
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),

//             Gap(3),

//             Align(
//               alignment: Alignment.topLeft,
//               child: CustomText(
//                 text: 'Session',
//                 color: AppColors.surface,
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),

//             Gap(3),

//             Align(
//               alignment: Alignment.topLeft,
//               child: CustomText(
//                 text: 'Level 4,B12',
//                 color: AppColors.surface,
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Gap(40),
//             Row(
//               children: [
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: CustomAppButton(
//                     borderRadius: 30,
//                     width: 250,
//                     btnColor: AppColors.background,
//                     onTap: () {},
//                     child: Text(
//                       'Extend Duration',
//                       style: TextStyle(
//                         color: AppColors.primary,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Gap(140),
//                 IconButton(
//                   autofocus: true,

//                   onPressed: () {},
//                   icon: Icon(
//                     Icons.location_on,
//                     size: 50,
//                     color: AppColors.surface,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
