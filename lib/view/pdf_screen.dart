import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';

import '../controller/home_controller.dart';

class Resume extends StatefulWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  final pdf = pw.Document();
  final HomeController controller = Get.put(HomeController());

  @override
  void initState() {

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "1",
            onPressed: () async{
            },
            child: const Icon(Icons.download),
          ),
          FloatingActionButton(
            heroTag: "2",
            onPressed: () async {

            },
            child: const Icon(Icons.print),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text('Resume'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('Personal Information'),
            _buildInfoItem('Name', '${controller.firstNameController.text} ${controller.lastNameController.text}'),
            _buildInfoItem('Email', '${controller.emailAddressController.text}'),
            _buildInfoItem('Mobile', '${controller.mobileNoController.text}'),
            _buildInfoItem('Date of Birth', '${controller.dateOfBirthController.text}'),
            _buildInfoItem('Gender', '${controller.selectedGender ?? ''}'),
            _buildInfoItem('Nationality', '${controller.nationalityController.text}'),
            _buildInfoItem('Marital Status', '${controller.marialStatusController.text}'),
            SizedBox(height: 20),
            _buildSectionTitle('Job Details'),
            _buildInfoItem('Job Title', '${controller.jobTitleController.text}'),
            _buildInfoItem('Experience', '${controller.experienceController.text}'),
            _buildInfoItem('About Me', '${controller.aboutMeController.text}'),
            SizedBox(height: 20),
            _buildSectionTitle('Education'),
            _buildEducationList(controller.schoolNameControllerLists, controller.courseNameControllerLists, controller.passingYearControllerLists, controller.PercentageControllerLists),
            SizedBox(height: 20),
            _buildSectionTitle('Work History'),
            _buildWorkHistoryList(controller.companyNameControllerLists, controller.yourPostControllerLists, controller.joiningDateControllerLists, controller.lastDateControllerLists),
            SizedBox(height: 20),
            _buildSectionTitle('Projects'),
            _buildProjectsList(controller.projectNameControllerLists, controller.liveURLControllerLists, controller.projectDesControllerLists),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Text(
        title,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
      ),
    );
  }

  Widget _buildInfoItem(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$label: ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(
              value,
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEducationList(List<TextEditingController> schoolNames, List<TextEditingController> courseNames, List<TextEditingController> passingYears, List<TextEditingController> percentages) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: schoolNames.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInfoItem('School/Collage', schoolNames[index].text),
            _buildInfoItem('Course', courseNames[index].text),
            _buildInfoItem('Passing Year', passingYears[index].text),
            _buildInfoItem('Percentage', percentages[index].text),
            SizedBox(height: 10),
          ],
        );
      },
    );
  }

  Widget _buildWorkHistoryList(List<TextEditingController> companies, List<TextEditingController> posts, List<TextEditingController> joiningDates, List<TextEditingController> lastDates) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: companies.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInfoItem('Company', companies[index].text),
            _buildInfoItem('Post', posts[index].text),
            _buildInfoItem('Joining Date', joiningDates[index].text),
            _buildInfoItem('Last Date', lastDates[index].text),
            SizedBox(height: 10),
          ],
        );
      },
    );
  }

  Widget _buildProjectsList(List<TextEditingController> projectNames, List<TextEditingController> liveURLs, List<TextEditingController> descriptions) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: projectNames.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInfoItem('Project Name', projectNames[index].text),
            _buildInfoItem('Live URL', liveURLs[index].text),
            _buildInfoItem('Description', descriptions[index].text),
            SizedBox(height: 10),
          ],
        );
      },
    );
  }

}
