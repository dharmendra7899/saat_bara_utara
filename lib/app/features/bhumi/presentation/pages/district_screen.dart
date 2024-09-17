import 'package:flutter/material.dart';
import 'package:saat_bara_utara/app/core/custom/app_text.dart';
import 'package:saat_bara_utara/app/features/bhumi/presentation/pages/taluka_screen.dart';
import 'package:saat_bara_utara/config/theme/app_palette.dart';

class DistrictScreen extends StatefulWidget {
  const DistrictScreen({super.key});

  @override
  State<DistrictScreen> createState() => _DistrictScreenState();
}

class _DistrictScreenState extends State<DistrictScreen> {
  int _selectedOption = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('7/12 उत्तर महाराष्ट्र'),
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            color: Colors.grey.withOpacity(0.11),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Radio<int>(
                      value: 1,
                      groupValue: _selectedOption,
                      onChanged: (value) {
                        setState(() {
                          _selectedOption = value!;
                        });
                      },
                    ),
                    appText(
                        title: "7/12",
                        context: context,
                        fontWeight: FontWeight.w500,
                        fontSize: 16)
                  ],
                ),
                Row(
                  children: [
                    Radio<int>(
                      value: 2,
                      groupValue: _selectedOption,
                      onChanged: (value) {
                        setState(() {
                          _selectedOption = value!;
                        });
                      },
                    ),
                    appText(
                        title: "8अ",
                        context: context,
                        fontWeight: FontWeight.w500,
                        fontSize: 16)
                  ],
                ),
                Row(
                  children: [
                    Radio<int>(
                      value: 3,
                      groupValue: _selectedOption,
                      onChanged: (value) {
                        setState(() {
                          _selectedOption = value!;
                        });
                      },
                    ),
                    appText(
                        title: "मालमत्ता पत्रक",
                        context: context,
                        fontWeight: FontWeight.w500,
                        fontSize: 16)
                  ],
                ),
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
                    title: "२ : जिल्हा निवड",
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
                itemCount: 6,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TalukaScreen(),
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
    );
  }
}
