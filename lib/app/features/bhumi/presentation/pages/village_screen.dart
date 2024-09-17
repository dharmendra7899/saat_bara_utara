import 'package:flutter/material.dart';
import 'package:saat_bara_utara/app/core/custom/app_text.dart';
import 'package:saat_bara_utara/config/theme/app_palette.dart';

class VillageScreen extends StatefulWidget {
  const VillageScreen({super.key});

  @override
  State<VillageScreen> createState() => _VillageScreenState();
}

class _VillageScreenState extends State<VillageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('7/12 उत्तर महाराष्ट्र'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 70,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              color: Colors.grey.withOpacity(0.11),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appText(
                      title: "जिल्हा : बुलढाणा",
                      context: context,
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                  const SizedBox(
                    height: 10,
                  ),
                  appText(
                      title: "तालुका : अधिक्षक भूमी अभिलेख",
                      context: context,
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                height: 50,
                width: 220,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppPaletteLight.primaryVariant),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: appText(
                      title: "२ : गाव निवडा",
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
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 12,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          appText(
                            title: '  ${index + 1}) उमरा',
                            context: context,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider()
                        ],
                      ),
                    );
                  },
                )),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
