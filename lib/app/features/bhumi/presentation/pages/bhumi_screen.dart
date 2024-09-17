import 'package:flutter/material.dart';
import 'package:saat_bara_utara/app/core/assets/constant.dart';
import 'package:saat_bara_utara/app/core/custom/app_text.dart';
import 'package:saat_bara_utara/app/features/bhumi/presentation/pages/department_screen.dart';
import 'package:saat_bara_utara/config/theme/app_palette.dart';
import 'package:saat_bara_utara/localization/constants.dart';

class BhumiScreen extends StatefulWidget {
  const BhumiScreen({super.key});

  @override
  State<BhumiScreen> createState() => _BhumiScreenState();
}

class _BhumiScreenState extends State<BhumiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xb8171025),
          title: appText(
              title: Texts().appName,
              context: context,
              color: AppPaletteLight.background,
              fontWeight: FontWeight.w600,
              fontSize: 18)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset(
                ConstantImage.appLogo,
                scale: 3,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            appText(
                title: Texts().mahaBhumi,
                context: context,
                fontSize: 22,
                fontWeight: FontWeight.w600),
            const SizedBox(
              height: 15,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 15,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DepartmentScreen(),
                        )),
                    child: Container(
                      height: 80,
                      color: index.isEven
                          ? Colors.grey.withOpacity(0.11)
                          : Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            ConstantImage.appLogo,
                            height: 60,
                            width: 60,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              appText(
                                  title: "Bhulekh Details",
                                  context: context,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17),
                              const SizedBox(
                                height: 10,
                              ),
                              appText(
                                  title: "Lucknow, Uttar Pradesh",
                                  context: context,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
