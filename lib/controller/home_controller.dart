import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeController extends GetxController {
  final formKey = GlobalKey<FormState>();




  // Resume Details
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController jobTitleController = TextEditingController();
  TextEditingController experienceController = TextEditingController();
  TextEditingController aboutMeController = TextEditingController();
  // Contact Details
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController mobileNoController = TextEditingController();
  // Personal Details
  TextEditingController dateOfBirthController = TextEditingController();
  DateTime? _selectedDate;
  TextEditingController genderController = TextEditingController();
  RxString? selectedGender;
  TextEditingController nationalityController = TextEditingController();
  TextEditingController marialStatusController = TextEditingController();
  ///Education
  RxList<TextEditingController> schoolNameControllerLists = <TextEditingController>[].obs;
  RxList<TextEditingController> courseNameControllerLists = <TextEditingController>[].obs;
  RxList<TextEditingController> passingYearControllerLists = <TextEditingController>[].obs;
  RxList<TextEditingController> PercentageControllerLists = <TextEditingController>[].obs;
  addFiled(){
    schoolNameControllerLists.add(TextEditingController());
    courseNameControllerLists.add(TextEditingController());
    passingYearControllerLists.add(TextEditingController());
    PercentageControllerLists.add(TextEditingController());
    update();
  }
  removeFiled(i){
    schoolNameControllerLists.removeAt(i);
    courseNameControllerLists.removeAt(i);
    passingYearControllerLists.removeAt(i);
    PercentageControllerLists.removeAt(i);
    update();
  }

  ///Work History
  RxList<TextEditingController> companyNameControllerLists = <TextEditingController>[].obs;
  RxList<TextEditingController> yourPostControllerLists = <TextEditingController>[].obs;
  RxList<TextEditingController> joiningDateControllerLists = <TextEditingController>[].obs;
  RxList<TextEditingController> lastDateControllerLists = <TextEditingController>[].obs;

  addWorkHistoryFiled(){
    companyNameControllerLists.add(TextEditingController());
    yourPostControllerLists.add(TextEditingController());
    joiningDateControllerLists.add(TextEditingController());
    lastDateControllerLists.add(TextEditingController());
    update();
  }
  removeWorkHistoryFiled(i){
    companyNameControllerLists.removeAt(i);
    yourPostControllerLists.removeAt(i);
    joiningDateControllerLists.removeAt(i);
    lastDateControllerLists.removeAt(i);
    update();
  }
  ///Projects
  RxList<TextEditingController> projectNameControllerLists = <TextEditingController>[].obs;
  RxList<TextEditingController> liveURLControllerLists = <TextEditingController>[].obs;
  RxList<TextEditingController> projectDesControllerLists = <TextEditingController>[].obs;

  addProjectsFiled(){
    projectNameControllerLists.add(TextEditingController());
    liveURLControllerLists.add(TextEditingController());
    projectDesControllerLists.add(TextEditingController());
    update();
  }
  removeProjectsFiled(i){
    projectNameControllerLists.removeAt(i);
    liveURLControllerLists.removeAt(i);
    projectDesControllerLists.removeAt(i);
    update();
  }

  Future<void> pickDate(BuildContext context, TextEditingController controller) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      controller.text = pickedDate.toString().split(' ')[0];
    }
  }

}
