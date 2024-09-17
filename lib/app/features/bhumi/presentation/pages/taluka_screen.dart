import 'package:flutter/material.dart';
import 'package:saat_bara_utara/app/core/custom/app_text.dart';
import 'package:saat_bara_utara/app/features/bhumi/presentation/pages/village_screen.dart';
import 'package:saat_bara_utara/config/theme/app_palette.dart';

class TalukaScreen extends StatefulWidget {
  const TalukaScreen({super.key});

  @override
  State<TalukaScreen> createState() => _TalukaScreenState();
}

class _TalukaScreenState extends State<TalukaScreen> {
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
              height: 60,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              color: Colors.grey.withOpacity(0.11),
              child: appText(
                  title: "जिल्हा : बुलढाणा",
                  context: context,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
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
                      title: "२ : तालुका निवडा",
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
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const VillageScreen(),
                            )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            appText(
                              title: '  ${index + 1}) बुलढाणा',
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
