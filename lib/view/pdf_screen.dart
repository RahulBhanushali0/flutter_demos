import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';

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
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        clip: true,
        build: (context) {
          return pw.Container(
            height: 850,
            width: double.infinity,
            color: PdfColors.white, // UI Container Color
            child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(bottom: 10),
                    child: pw.Text(
                      "Personal Information",
                      style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold, color: PdfColors.blue),
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.symmetric(vertical: 5),
                    child: pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text('Name: ',
                          style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                        ),
                        pw.Expanded(
                          child: pw.Text('${controller.firstNameController.text} ${controller.lastNameController.text}',
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.symmetric(vertical: 5),
                    child: pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text('Email: ',
                          style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                        ),
                        pw.Expanded(
                          child: pw.Text(controller.emailAddressController.text,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.symmetric(vertical: 5),
                    child: pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text('Mobile: ',
                          style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                        ),
                        pw.Expanded(
                          child: pw.Text(controller.mobileNoController.text,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.symmetric(vertical: 5),
                    child: pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text('Date of Birth: ',
                          style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                        ),
                        pw.Expanded(
                          child: pw.Text(controller.dateOfBirthController.text,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.symmetric(vertical: 5),
                    child: pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text('Gender: ',
                          style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                        ),
                        pw.Expanded(
                          child: pw.Text(controller.genderController.text,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.symmetric(vertical: 5),
                    child: pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text('Nationality: ',
                          style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                        ),
                        pw.Expanded(
                          child: pw.Text(controller.nationalityController.text,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.symmetric(vertical: 5),
                    child: pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text('Marital Status: ',
                          style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                        ),
                        pw.Expanded(
                          child: pw.Text(controller.marialStatusController.text,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.SizedBox(height: 20),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(bottom: 10),
                    child: pw.Text(
                      "Job Details",
                      style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold, color: PdfColors.blue),
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.symmetric(vertical: 5),
                    child: pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text('Job Title: ',
                          style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                        ),
                        pw.Expanded(
                          child: pw.Text(controller.jobTitleController.text,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.symmetric(vertical: 5),
                    child: pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text('Experience: ',
                          style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                        ),
                        pw.Expanded(
                          child: pw.Text(controller.experienceController.text,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.symmetric(vertical: 5),
                    child: pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text('About Me: ',
                          style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                        ),
                        pw.Expanded(
                          child: pw.Text(controller.aboutMeController.text,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),


                  pw.SizedBox(height: 20),
                  pw.Padding(
                    padding: pw.EdgeInsets.only(bottom: 10),
                    child: pw.Text(
                      "Education",
                      style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold, color: PdfColors.blue),
                    ),
                  ),
                  pw.ListView.separated(itemBuilder: ( context, index) {
                    return pw.Column(
                        children: [
                          pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Row(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text('School/Collage: ',
                                  style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Expanded(
                                  child: pw.Text('${controller.schoolNameControllerLists[index].text.toString()}',
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Row(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text('Course: ',
                                  style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Expanded(
                                  child: pw.Text('${controller.courseNameControllerLists[index].text.toString()}',
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Row(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text('Passing Year: ',
                                  style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Expanded(
                                  child: pw.Text('${controller.passingYearControllerLists[index].text.toString()}',
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Row(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text('Percentage: ',
                                  style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Expanded(
                                  child: pw.Text('${controller.passingYearControllerLists[index].text.toString()}',
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ]

                    );
                  }, itemCount: controller.schoolNameControllerLists.length, separatorBuilder: (context, int index) {
                    return pw.SizedBox(height: 10);
                  }),



                  // pw.SizedBox(height: 20),
                  // pw.Padding(
                  //   padding: pw.EdgeInsets.only(bottom: 10),
                  //   child: pw.Text(
                  //     "Work History",
                  //     style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold, color: PdfColors.blue),
                  //   ),
                  // ),
                  // pw.ListView.separated(itemBuilder: ( context, index) {
                  //   return pw.Column(
                  //       children: [
                  //         pw.Padding(
                  //           padding: pw.EdgeInsets.symmetric(vertical: 5),
                  //           child: pw.Row(
                  //             crossAxisAlignment: pw.CrossAxisAlignment.start,
                  //             children: [
                  //               pw.Text('Company: ',
                  //                 style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                  //               ),
                  //               pw.Expanded(
                  //                 child: pw.Text('${controller.companyNameControllerLists[index].text.toString()}',
                  //                   softWrap: true,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         pw.Padding(
                  //           padding: pw.EdgeInsets.symmetric(vertical: 5),
                  //           child: pw.Row(
                  //             crossAxisAlignment: pw.CrossAxisAlignment.start,
                  //             children: [
                  //               pw.Text('Post: ',
                  //                 style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                  //               ),
                  //               pw.Expanded(
                  //                 child: pw.Text('${controller.yourPostControllerLists[index].text.toString()}',
                  //                   softWrap: true,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         pw.Padding(
                  //           padding: pw.EdgeInsets.symmetric(vertical: 5),
                  //           child: pw.Row(
                  //             crossAxisAlignment: pw.CrossAxisAlignment.start,
                  //             children: [
                  //               pw.Text('Joining Date: ',
                  //                 style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                  //               ),
                  //               pw.Expanded(
                  //                 child: pw.Text('${controller.joiningDateControllerLists[index].text.toString()}',
                  //                   softWrap: true,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         pw.Padding(
                  //           padding: pw.EdgeInsets.symmetric(vertical: 5),
                  //           child: pw.Row(
                  //             crossAxisAlignment: pw.CrossAxisAlignment.start,
                  //             children: [
                  //               pw.Text('Last Date: ',
                  //                 style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                  //               ),
                  //               pw.Expanded(
                  //                 child: pw.Text('${controller.lastDateControllerLists[index].text.toString()}',
                  //                   softWrap: true,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //
                  //       ]
                  //
                  //   );
                  // }, itemCount: controller.companyNameControllerLists.length, separatorBuilder: (context, int index) {
                  //   return pw.SizedBox(height: 10);
                  // }),
                  //
                  //
                  //
                  //
                  // pw.SizedBox(height: 20),
                  // pw.Padding(
                  //   padding: pw.EdgeInsets.only(bottom: 10),
                  //   child: pw.Text(
                  //     "Projects",
                  //     style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold, color: PdfColors.blue),
                  //   ),
                  // ),
                  // pw.ListView.separated(itemBuilder: ( context, index) {
                  //   return pw.Column(
                  //       children: [
                  //         pw.Padding(
                  //           padding: pw.EdgeInsets.symmetric(vertical: 5),
                  //           child: pw.Row(
                  //             crossAxisAlignment: pw.CrossAxisAlignment.start,
                  //             children: [
                  //               pw.Text('Project Name: ',
                  //                 style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                  //               ),
                  //               pw.Expanded(
                  //                 child: pw.Text('${controller.projectNameControllerLists[index].text.toString()}',
                  //                   softWrap: true,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         pw.Padding(
                  //           padding: pw.EdgeInsets.symmetric(vertical: 5),
                  //           child: pw.Row(
                  //             crossAxisAlignment: pw.CrossAxisAlignment.start,
                  //             children: [
                  //               pw.Text('Live URL: ',
                  //                 style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                  //               ),
                  //               pw.Expanded(
                  //                 child: pw.Text('${controller.liveURLControllerLists[index].text.toString()}',
                  //                   softWrap: true,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         pw.Padding(
                  //           padding: pw.EdgeInsets.symmetric(vertical: 5),
                  //           child: pw.Row(
                  //             crossAxisAlignment: pw.CrossAxisAlignment.start,
                  //             children: [
                  //               pw.Text('Description: ',
                  //                 style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                  //               ),
                  //               pw.Expanded(
                  //                 child: pw.Text('${controller.projectDesControllerLists[index].text.toString()}',
                  //                   softWrap: true,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //
                  //       ]
                  //
                  //   );
                  // }, itemCount: controller.projectNameControllerLists.length, separatorBuilder: (context, int index) {
                  //   return pw.SizedBox(height: 10);
                  // }),




                ]
            ),
          );
        },
      ),
    );
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        clip: true,
        build: (context) {
          return pw.Container(
            height: 850,
            width: double.infinity,
            color: PdfColors.white, // UI Container Color
            child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [

                  pw.SizedBox(height: 20),
                  pw.Padding(
                    padding: pw.EdgeInsets.only(bottom: 10),
                    child: pw.Text(
                      "Work History",
                      style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold, color: PdfColors.blue),
                    ),
                  ),
                  pw.ListView.separated(itemBuilder: ( context, index) {
                    return pw.Column(
                        children: [
                          pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Row(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text('Company: ',
                                  style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Expanded(
                                  child: pw.Text('${controller.companyNameControllerLists[index].text.toString()}',
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Row(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text('Post: ',
                                  style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Expanded(
                                  child: pw.Text('${controller.yourPostControllerLists[index].text.toString()}',
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Row(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text('Joining Date: ',
                                  style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Expanded(
                                  child: pw.Text('${controller.joiningDateControllerLists[index].text.toString()}',
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Row(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text('Last Date: ',
                                  style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Expanded(
                                  child: pw.Text('${controller.lastDateControllerLists[index].text.toString()}',
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ]

                    );
                  }, itemCount: controller.companyNameControllerLists.length, separatorBuilder: (context, int index) {
                    return pw.SizedBox(height: 10);
                  }),




                  pw.SizedBox(height: 20),
                  pw.Padding(
                    padding: pw.EdgeInsets.only(bottom: 10),
                    child: pw.Text(
                      "Projects",
                      style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold, color: PdfColors.blue),
                    ),
                  ),
                  pw.ListView.separated(itemBuilder: ( context, index) {
                    return pw.Column(
                        children: [
                          pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Row(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text('Project Name: ',
                                  style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Expanded(
                                  child: pw.Text('${controller.projectNameControllerLists[index].text.toString()}',
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Row(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text('Live URL: ',
                                  style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Expanded(
                                  child: pw.Text('${controller.liveURLControllerLists[index].text.toString()}',
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          pw.Padding(
                            padding: pw.EdgeInsets.symmetric(vertical: 5),
                            child: pw.Row(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text('Description: ',
                                  style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Expanded(
                                  child: pw.Text('${controller.projectDesControllerLists[index].text.toString()}',
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ]

                    );
                  }, itemCount: controller.projectNameControllerLists.length, separatorBuilder: (context, int index) {
                    return pw.SizedBox(height: 10);
                  }),




                ]
            ),
          );
        },
      ),
    );
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

              Directory? res = await getExternalStorageDirectory();

              String path = res!.path;

              File file = File('$path/resume.pdf');

              await file.writeAsBytes(await pdf.save()).then((value) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.green,
                    behavior: SnackBarBehavior.floating,
                    content: Text("File Path ${file.path.toString()}"),
                  ),
                );
              });
            },
            child: const Icon(Icons.download),
          ),
          FloatingActionButton(
            heroTag: "2",
            onPressed: () async {
              Printing.layoutPdf(onLayout: (format) {
                return pdf.save();
              });
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
