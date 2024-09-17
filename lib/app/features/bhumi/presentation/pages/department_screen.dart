import 'package:flutter/material.dart';
import 'package:saat_bara_utara/app/core/custom/app_text.dart';
import 'package:saat_bara_utara/app/features/bhumi/presentation/pages/district_screen.dart';
import 'package:saat_bara_utara/config/theme/app_palette.dart';
import 'package:saat_bara_utara/localization/constants.dart';

class DepartmentScreen extends StatefulWidget {
  const DepartmentScreen({super.key});

  @override
  State<DepartmentScreen> createState() => _DepartmentScreenState();
}

class _DepartmentScreenState extends State<DepartmentScreen> {
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
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 50,
                width: 260,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppPaletteLight.primaryVariant),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: appText(
                      title: "1 : Select the section",
                      context: context,
                      color: AppPaletteLight.background,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 7,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DistrictScreen(),
                        )),
                    child: Container(
                      height: 90,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 5),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: const Border(
                              bottom: BorderSide(
                                  color: AppPaletteLight.primaryVariant,
                                  width: 2)),
                          color: AppPaletteLight.secondaryVariant),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          appText(
                              title: "Amravati",
                              context: context,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                          const SizedBox(
                            height: 10,
                          ),
                          appText(
                              title: "(Lucknow, Noida, Mumbai, Pune)",
                              context: context,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ],
                      ),
                    ),
                  );
                }),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
