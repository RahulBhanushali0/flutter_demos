import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/home_controller.dart';
import '../custom_widgets/custom_TextFromField.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade100,
          title: const Text("Resume Details"),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: InkWell(
                onTap: (){
                },
                child: Text("Clear",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600
                ),),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Personal Details",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Flexible(
                    child: CustomInputField(
                      fieldController: controller.firstNameController,
                      label: 'First Name',
                      hint: 'First Name',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your first name';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: CustomInputField(
                      fieldController: controller.lastNameController,
                      label: 'Last Name',
                      hint: 'Last Name',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your last name';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Flexible(
                    child: CustomInputField(
                      fieldController: controller.jobTitleController,
                      label: 'Position',
                      hint: 'Position',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your job title';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: CustomInputField(
                      fieldController: controller.experienceController,
                      label: 'Experience',
                      hint: 'Experience (Ex: 1.6 years)',
                      fieldInputType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your experience';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              CustomInputField(
                fieldController: controller.aboutMeController,
                label: 'Summary',
                maxLines: 5,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your summary';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Flexible(
                    child: CustomInputField(
                      fieldController: controller.dateOfBirthController,
                      label: 'DOB',
                      readOnly: true,
                      onTap: () {

                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your date of birth';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: DropdownButtonFormField<String>(
                      value: controller.selectedGender?.value,
                      items: <String>[
                        'Male', // Unique value for Male
                        'Female', // Unique value for Female
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        controller.selectedGender?.value = value!;
                      },
                      decoration: const InputDecoration(
                        labelText: 'Gender',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select your gender';
                        }
                        return null;
                      },
                    ),
                  ),

                ],
              ),

              const SizedBox(height: 10),
              Row(
                children: [
                  Flexible(
                    child: CustomInputField(
                      fieldController: controller.nationalityController,
                      label: 'Nationality',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your nationality';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: CustomInputField(
                      fieldController: controller.marialStatusController,
                      label: 'Marital Status',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your marital status';
                        }
                        return null;
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "Contact Details",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Flexible(
                    child: CustomInputField(
                      fieldController: controller.emailAddressController,
                      fieldInputType: TextInputType.emailAddress,
                      label: 'Email Address',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Email';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: CustomInputField(
                      fieldController: controller.mobileNoController,
                      fieldInputType: TextInputType.phone,
                      label: 'Mobile No.',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Mobile No.';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Education Details",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(Icons.add), onPressed: () {  },
                  )
                ],
              ),
              Obx(() => ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.schoolNameControllerLists.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                // onPressed: controller.setResumeDataModel,
                                onPressed: () {
                                },
                                icon: const Icon(Icons.remove_circle),
                              ),
                            ),
                            CustomInputField(
                              fieldController:
                                  controller.schoolNameControllerLists[index],
                              fieldInputType: TextInputType.name,
                              label: "School Name",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter School Name';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 5),
                            CustomInputField(
                              label: "Course Name",
                              fieldController:
                                  controller.courseNameControllerLists[index],
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Course Name';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Flexible(
                                  child: CustomInputField(
                                    label: "Passing Year",
                                    fieldInputType: TextInputType.number,
                                    fieldController: controller
                                        .passingYearControllerLists[index],
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter Passing Year';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Flexible(
                                  child: CustomInputField(
                                    label: "Percentage",
                                    fieldInputType: TextInputType.number,
                                    fieldController: controller
                                        .PercentageControllerLists[index],
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter Percentage';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Work History",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,

                    icon: const Icon(Icons.add), onPressed: () {  },
                  )
                ],
              ),
              Obx(() => ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.companyNameControllerLists.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                onPressed: () {

                                },
                                icon: const Icon(Icons.remove_circle),
                              ),
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: CustomInputField(
                                    label: "Company Name",
                                    fieldController: controller
                                        .companyNameControllerLists[index],
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter Company Name';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Flexible(
                                  child: CustomInputField(
                                    label: "Your Post",
                                    fieldController: controller
                                        .yourPostControllerLists[index],
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter Your Post';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Flexible(
                                  child: CustomInputField(
                                    label: "Joining Date",
                                    fieldController: controller
                                        .joiningDateControllerLists[index],
                                    fieldInputType: TextInputType.number,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter Joining Date';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Flexible(
                                  child: CustomInputField(
                                    label: "Last Date",
                                    fieldController: controller
                                        .lastDateControllerLists[index],
                                    fieldInputType: TextInputType.number,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter Last Date';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Projects",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(Icons.add), onPressed: () {  },
                  )
                ],
              ),
              Obx(() => ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.projectNameControllerLists.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                // onPressed: controller.setResumeDataModel,
                                onPressed: () {
                                },
                                icon: const Icon(Icons.remove_circle),
                              ),
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: CustomInputField(
                                    label: "Project Name",
                                    fieldController: controller
                                        .projectNameControllerLists[index],
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter Project Name';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Flexible(
                                  child: CustomInputField(
                                    label: "Live URL",
                                    fieldController: controller
                                        .liveURLControllerLists[index],
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter Live URL';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            CustomInputField(
                              label: "Project Description",
                              maxLines: 3,
                              fieldController:
                                  controller.projectDesControllerLists[index],
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Project Description';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  )),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade200,
                      padding: const EdgeInsets.symmetric(
                          vertical: 15), // Button padding
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Button border radius
                      ),
                      elevation: 3, // Elevation
                    ),
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16, // Text size
                        fontWeight: FontWeight.bold, // Text weight
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
