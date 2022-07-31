import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_dart_knights_sih/features/AdminConsole/Backend/admin_bloc/admin_cubit.dart';
import 'package:team_dart_knights_sih/features/AdminConsole/UI/pages/Management/cubit/management_cubit.dart';
import 'package:team_dart_knights_sih/features/AdminConsole/UI/widgets/custom_textbutton.dart';
import 'package:team_dart_knights_sih/models/ModelProvider.dart';

import '../../../../../core/constants.dart';

class AddTeacherPage extends StatefulWidget {
  const AddTeacherPage({Key? key}) : super(key: key);

  @override
  State<AddTeacherPage> createState() => _AddTeacherPageState();
}

class _AddTeacherPageState extends State<AddTeacherPage> {
  @override
  Widget build(BuildContext context) {
    final managementCubit = BlocProvider.of<ManagementCubit>(context);
    final adminCubit = BlocProvider.of<AdminCubit>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        automaticallyImplyLeading: true,
        elevation: 0,
        iconTheme: const IconThemeData(color: navIconsColor),
      ),
      body: Container(
        color: backgroundColor,
        child: BlocBuilder<ManagementCubit, ManagementState>(
          builder: (context, state) {
            if (state is AddingTeacher) {
              return progressIndicator;
            }

            return Center(
              child: CustomTextButton(
                onPressed: () async {
                  //Sign up the user first
                  //......
                  //Create the User in database
                  final newTeacher = User(
                      email: 'oksrsly@gmail.com',
                      name: 'Vedant Kulkarni',
                      role: Role.SuperAdmin,
                      phoneNumber: '+91 9623026654',
                      address: 'New Address',
                      age: 5,
                      description: 'New Description',
                      gender: 'Female',
                      schoolID: adminCubit.admin.schoolID,
                      shitfInfo: 'Some shift info');
                  await managementCubit.addNewTeacher(newTeacher: newTeacher);
                  
                  Navigator.pop(context);
                },
                text: "Add",
              ),
            );
          },
        ),
      ),
    );
  }
}