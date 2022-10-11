part of 'user_bloc.dart';

@immutable
abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object?> get props => [];
}

class UserChanged extends UserState {
  String username;
  String email;
  bool isHidePassword;
  UserChanged({this.email = "", this.username = "", this.isHidePassword = true});

  @override
  // TODO: implement props
  List<Object?> get props => [username, email, isHidePassword];
}
