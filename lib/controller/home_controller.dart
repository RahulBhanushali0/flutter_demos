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
  ///Work History
  RxList<TextEditingController> companyNameControllerLists = <TextEditingController>[].obs;
  RxList<TextEditingController> yourPostControllerLists = <TextEditingController>[].obs;
  RxList<TextEditingController> joiningDateControllerLists = <TextEditingController>[].obs;
  RxList<TextEditingController> lastDateControllerLists = <TextEditingController>[].obs;
  ///Projects
  RxList<TextEditingController> projectNameControllerLists = <TextEditingController>[].obs;
  RxList<TextEditingController> liveURLControllerLists = <TextEditingController>[].obs;
  RxList<TextEditingController> projectDesControllerLists = <TextEditingController>[].obs;

}
