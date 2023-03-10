import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:team_dart_knights_sih/core/constants.dart';
import 'package:team_dart_knights_sih/features/AdminConsole/Backend/aws_api_client.dart';
import 'package:team_dart_knights_sih/models/ModelProvider.dart';

part 'management_state.dart';

class ManagementCubit extends Cubit<ManagementState> {
  AWSApiClient awsApiClient;
  ManagementMode managementMode;
  List<User> _userList = [];
  List<Student> _studentList = [];
  List<ClassRoom> _classroomList = [];

  ManagementCubit(
      {required this.awsApiClient,
      required this.managementMode,
      required int limit})
      : super(ManagementInitial()) {
    if (managementMode == ManagementMode.Students) {
      getAllStudents(limit: limit);
    } else if (managementMode == ManagementMode.User) {
      getAllUsers(role: Role.SuperAdmin);
    } else if (managementMode == ManagementMode.ClassRooms) {
      getAllClassRooms(limit: limit);
    } else if (managementMode == ManagementMode.Leaves) {
      getAllLeaves(limit: 10);
    }
  }

  //ManagementMode = users
  Future<void> getAllUsers({required Role role}) async {
    emit(FetchingUsers());
    final _userList = await awsApiClient.getListOfUsers(role: role);
    // final adminList = await awsApiClient.getListOfUsers(role: Role.Admin);
    // _userList = superAdminList + adminList;
    print(_userList);
    emit(UsersFetched(userList: _userList));
  }

  Future<User> getUser({required String userID}) async {
    return await awsApiClient.getAdminDetails(userID: userID);
  }

  Future<void> updateUser({required User updatedUser}) async {
    emit(UpdatingUser());
    await awsApiClient.updateUser(updatedUser: updatedUser);

    emit(UserUpdated());
  }

  Future<void> addNewUser({required User newUser}) async {
    emit(AddingUser());
    final createdUser = await awsApiClient.createUser(user: newUser);

    emit(UserAdded());
  }

  Future<void> deleteUser({required String email}) async {
    emit(DeletingUser());
    final deletedTeacher = await awsApiClient.deleteUser(email: email);

    emit(UserDeleted());
  }

    Future<void> registerUser({required String username}) async {
    // emit(RegisteringUser());
    await awsApiClient.signUpUser(userID: username, password: 'Unowho@23');
    // emit(UserRegisterd());
  }

  void clearUserList() {
    _userList = [];
  }

  //getter
  List<User> get usersList {
    return _userList;
  }

  

  //Management mode = Students
  Future<void> getAllStudents({required int limit}) async {
    emit(FetchingStudents());
    _studentList = await awsApiClient.getListOfStudent(limit: limit);
    emit(StudentsFetched(studentsList: _studentList));
  }

  Future<Student> getStudent({required String studentID}) async {
    final student = await awsApiClient.getStudent(studentID: studentID);

    return student;
  }

  Future<void> createStudent({required Student student}) async {
    emit(CreatingStudent());
    final createdStudent = await awsApiClient.createStudent(student: student);
    emit(StudentCreated(student: createdStudent));
  }

  Future<void> deleteStudent({required String studentID}) async {
    emit(DeletingStudent());
    final deletedStudent = awsApiClient.deleteStudent(studentID: studentID);
    emit(StudentDeleted());
  }

  Future<void> updateStudent({required Student updatedStudent}) async {
    final result =
        await awsApiClient.updateStudent(updatedStudent: updatedStudent);
  }

  Future<void> bulkUpdateStudents(
      {required List<Student> bulkList, required String classRoomID}) async {
    for (var everyStudent in bulkList) {
      everyStudent = everyStudent.copyWith(classRoomStudentsId: classRoomID);
      await updateStudent(updatedStudent: everyStudent);
    }
    print('all students added');
  }

  void clearStudentList() {
    _studentList = [];
  }

  //ManagementMode = ClassRooms
  Future<void> createClassRoom({required ClassRoom classRoom}) async {
    await awsApiClient.createClassRoom(classRoom: classRoom);
  }

  Future<void> getAllClassRooms({required int limit}) async {
    emit(FetchingClassRooms());
    _classroomList = await awsApiClient.getListOfClassrooms(limit: limit);
    emit(ClassRoomsFetched(classroomList: _classroomList));
  }

  Future<ClassRoom> getClassRoom({required String classRoomID}) async {
    emit(FetchingClassRooms());
    return await awsApiClient.getClassRoom(classRoomID: classRoomID);
  }

  Future<void> deleteClassRoom({required String classRoomID}) async {
    final deletedClassRoom =
        await awsApiClient.deleteClassRoom(classRoomID: classRoomID);
  }

  Future<ClassRoom> updateClassRoom(
      {required ClassRoom updatedClassRoom}) async {
    return await awsApiClient.updateClassRoom(classRoom: updatedClassRoom);
  }

  //Managemode  = Leaves
  Future<void> getAllLeaves({required int limit}) async {
    emit(FetchingLeaves());

    final leaves = await awsApiClient.getListOfLeaves(limit: limit);
    emit(LeavesFetched(leaves: leaves));
  }

  //getter
  List<Student> get studentsList {
    return _studentList;
  }
}
