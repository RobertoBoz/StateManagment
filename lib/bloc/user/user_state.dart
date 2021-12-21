part of 'user_bloc.dart';

@immutable
abstract class UserState {
  const UserState({this.existUser = false, this.user});

  final bool existUser;
  final Usuario? user;
}

class UserInitailState extends UserState {
  const UserInitailState() : super(existUser: false, user: null);
}

class UserSetState extends UserState {
  final Usuario newUser;

  const UserSetState(this.newUser) : super(existUser: true, user: newUser);
}
