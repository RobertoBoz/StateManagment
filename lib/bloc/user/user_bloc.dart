// ignore_for_file: avoid_types_as_parameter_names

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart' show immutable;
import 'package:statemanagement/Models/model_usuario.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitailState()) {
    on<ActivateUser>((event, emit) => emit(UserSetState(event.user)));

    on<ChangeUserAge>(((event, emit) {
      if (!state.existUser) return;

      emit(UserSetState(state.user!.copyWith(edad: event.age)));
    }));

    on<AddProfetion>(((event, emit) {
      if (!state.existUser) return;
      List<String> list = state.user!.profesiones;
      list.add(event.profeciones);

      emit(UserSetState(state.user!.copyWith(profesiones: list)));
    }));

    on<DeleteUser>((event, emit) {
      emit(const UserInitailState());
    });
  }
}
