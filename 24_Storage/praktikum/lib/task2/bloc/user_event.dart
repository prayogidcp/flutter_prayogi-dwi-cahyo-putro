part of 'user_bloc.dart';

@immutable
abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class CheckUser extends UserEvent {
  BuildContext? context;
  CheckUser({this.context});
}

class Initial extends UserEvent {}

class IsRegister extends UserEvent {
  bool newUser;
  IsRegister({
    required this.newUser,
  });
}

class AddName extends UserEvent {
  String username;
  AddName({
    required this.username,
  });
}

class AddEmail extends UserEvent {
  String email;
  AddEmail({
    required this.email,
  });
}

// class Remove extends UserEvent {
//   String user;
//   Remove({
//     required this.user,
//   });
// }

class RemoveName extends UserEvent {}

class RemoveEmail extends UserEvent {
  // String email;
  // RemoveEmail({
  //   required this.email,
  // });
}

class ChangeUser extends UserEvent {}

