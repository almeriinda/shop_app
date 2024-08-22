part of'sign_in_bloc.dart';

sealed class SignInEvent extends Equatable{
  const SignInEvent();

  @override
  List<Object> get props => [];
}

class SignRequired extends SignInEvent{
  final String email;
  final String password;

  const SignRequired(this.email, this.password);

  @override
  List<Object> get props => [email, password];
}

class SignOutRequired extends SignInEvent{}