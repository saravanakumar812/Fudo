import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Components/theme.dart';
import '../../Controller/ProfileScreenController/languageScreenController.dart';

class LanguageScreen extends GetView<LanguageScreenController> {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    LanguageScreenController controller = Get.put(LanguageScreenController());
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap:(){
              Get.back();
            },
            child: Image.asset("assets/icons/back_Icon.png")),
        leadingWidth: width * .2,
        title: Text(
          "Language",
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Image.asset("assets/icons/Profile_icon.png"),
          SizedBox(
            width: width * .05,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Suggested",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          ListTile(
              title: Text(
                "English(US)",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),
              trailing: Obx(
                () => Radio<bool>(
                  value: true,
                  groupValue: controller.selectedEnglishUs.value,
                  onChanged: (bool? value) {
                    controller.selectedEnglishUs.value =
                        !controller.selectedEnglishUs.value;
                    controller.selectedEnglishUk.value = false;
                    if (value != null) {}
                  },
                  activeColor: AppTheme.radioButtonColor,
                ),
              )),
          ListTile(
              title: Text(
                "English(UK)",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),
              trailing: Obx(
                () => Radio<bool>(
                  value: true,
                  groupValue: controller.selectedEnglishUk.value,
                  onChanged: (bool? value) {
                    controller.selectedEnglishUk.value =
                        !controller.selectedEnglishUk.value;
                    controller.selectedTelugu.value = false;
                    controller.selectedEnglishUs.value = false;
                    controller.selectedKannada.value = false;
                    controller.selectedBengali.value = false;
                    controller.selectedHindi.value = false;
                    controller.selectedMalayalam.value = false;
                    controller.selectedTamil.value = false;
                    if (value != null) {}
                  },
                  activeColor: AppTheme.radioButtonColor,
                ),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Language",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          ListTile(
              title: Text(
                "Tamil",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),
              trailing: Obx(
                () => Radio<bool>(
                  value: true,
                  groupValue: controller.selectedTamil.value,
                  onChanged: (bool? value) {
                    controller.selectedTamil.value =
                        !controller.selectedTamil.value;
                    controller.selectedEnglishUk.value = false;
                    controller.selectedEnglishUs.value = false;
                    controller.selectedKannada.value = false;
                    controller.selectedBengali.value = false;
                    controller.selectedHindi.value = false;
                    controller.selectedMalayalam.value = false;
                    controller.selectedTelugu.value = false;
                    if (value != null) {}
                  },
                  activeColor: AppTheme.radioButtonColor,
                ),
              )),
          ListTile(
              title: Text(
                "Kannada",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),
              trailing: Obx(
                () => Radio<bool>(
                  value: true,
                  groupValue: controller.selectedKannada.value,
                  onChanged: (bool? value) {
                    controller.selectedKannada.value =
                        !controller.selectedKannada.value;
                    controller.selectedEnglishUs.value = false;
                    controller.selectedEnglishUk.value = false;
                    controller.selectedTamil.value = false;
                    controller.selectedBengali.value = false;
                    controller.selectedHindi.value = false;
                    controller.selectedMalayalam.value = false;
                    controller.selectedTelugu.value = false;
                    if (value != null) {}
                  },
                  activeColor: AppTheme.radioButtonColor,
                ),
              )),
          ListTile(
              title: Text(
                "Malayalam",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),
              trailing: Obx(
                () => Radio<bool>(
                  value: true,
                  groupValue: controller.selectedMalayalam.value,
                  onChanged: (bool? value) {
                    controller.selectedMalayalam.value =
                        !controller.selectedMalayalam.value;
                    controller.selectedEnglishUs.value = false;
                    controller.selectedEnglishUk.value = false;
                    controller.selectedTamil.value = false;
                    controller.selectedBengali.value = false;
                    controller.selectedHindi.value = false;
                    controller.selectedKannada.value = false;
                    controller.selectedTelugu.value = false;
                    if (value != null) {}
                  },
                  activeColor: AppTheme.radioButtonColor,
                ),
              )),ListTile(
              title: Text(
                "Telugu",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),
              trailing: Obx(
                () => Radio<bool>(
                  value: true,
                  groupValue: controller.selectedTelugu.value,
                  onChanged: (bool? value) {
                    controller.selectedTelugu.value =
                        !controller.selectedTelugu.value;
                    controller.selectedEnglishUs.value = false;
                    controller.selectedEnglishUk.value = false;
                    controller.selectedTamil.value = false;
                    controller.selectedBengali.value = false;
                    controller.selectedHindi.value = false;
                    controller.selectedKannada.value = false;
                    controller.selectedMalayalam.value = false;
                    if (value != null) {}
                  },
                  activeColor: AppTheme.radioButtonColor,
                ),
              )),
        ],
      ),
    );
  }
}
