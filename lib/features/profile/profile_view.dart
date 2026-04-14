import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_colors.dart';
import 'package:flutter_application_1/shared/custom_text_form_filed.dart';
import 'package:gap/gap.dart';
import '../../../shared/custom_text.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _address = TextEditingController();

  bool isGuest = false;

  String? selectedImage;
  bool isLoadingUpdate = false;
  bool isLoadingLogout = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0.0,
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            clipBehavior: Clip.none,
            child: Column(
              children: [
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () =>
                          Navigator.popUntil(context, (route) => route.isFirst),
                      child: Icon(Icons.arrow_back, color: AppColors.primary),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 0,
                      ),
                      child: Icon(CupertinoIcons.settings_solid),
                    ),
                  ],
                ),

                /// image
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1, color: Colors.black),
                    color: Colors.grey.shade300,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(1),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1,
                            color: AppColors.primary,
                          ),
                          color: Colors.grey.shade100,
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Icon(Icons.person),
                      ),
                    ),
                  ),
                ),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Card(
                        elevation: 0.0,
                        color: const Color.fromARGB(255, 6, 78, 13),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 8,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomText(
                                text: 'Upload',
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 13,
                              ),
                              Gap(10),
                              Icon(
                                CupertinoIcons.camera,
                                size: 17,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Card(
                        elevation: 0.0,
                        color: const Color.fromARGB(255, 111, 2, 40),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 8,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomText(
                                text: 'Remove',
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 13,
                              ),
                              Gap(10),
                              Icon(
                                CupertinoIcons.trash,
                                size: 16,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(20),

                /// Form
                CustomTextFormField(
                  controller: _name,
                  hintText: 'Name',
                  obscurePassword: false,
                ),
                Gap(25),
                CustomTextFormField(
                  controller: _email,
                  hintText: 'Email',
                  obscurePassword: false,
                ),
                Gap(25),
                CustomTextFormField(
                  controller: _address,
                  hintText: 'Address',
                  obscurePassword: false,
                ),
                Gap(20),
                Divider(),
                Gap(10),
                SizedBox(
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Edit
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: isLoadingUpdate
                                ? CupertinoActivityIndicator(
                                    color: Colors.white,
                                  )
                                : Center(
                                    child: CustomText(
                                      text: 'Edit Profile',
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                          ),
                        ),
                      ),

                      Gap(10),

                      /// logout
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: AppColors.primary),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: isLoadingLogout
                                ? CupertinoActivityIndicator(
                                    color: AppColors.primary,
                                  )
                                : Center(
                                    child: CustomText(
                                      text: 'Logout',
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.primary,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(300),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
