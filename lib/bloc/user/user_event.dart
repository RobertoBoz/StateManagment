part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class ActivateUser extends UserEvent {
  final Usuario user;

  ActivateUser(this.user);
}

class ChangeUserAge extends UserEvent {
  final int age;
  ChangeUserAge(this.age);
}

class AddProfetion extends UserEvent {
  final String profeciones;

  AddProfetion(this.profeciones);
}

class DeleteUser extends UserEvent {}
