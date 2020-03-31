import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {

  @observable
  bool isPasswordObscure = false;

  @action
  void setPasswordVisible() => isPasswordObscure = !isPasswordObscure;

  @observable
  String email = '';

  @action
  void setEmail(String value) => email = value;

  @observable
  String password = '';

  @action
  void setPassword(String value) => password = value;

  @observable
  bool isLoading = false;

  @action
  Future<void> loginUser() async {
    isLoading = true;

    await Future.delayed(Duration(seconds: 3));

    isLoading = false;
    isLoggedIn = true;
    email = '';
    password = '';
  }

  @observable
  bool isLoggedIn = false;

  @computed
  bool get isPasswordValid => password.length >= 6;

  @computed
  bool get isEmailValid => RegExp(
          r"^(([^<>()[\]\\.,;:\s@\']+(\.[^<>()[\]\\.,;:\s@\']+)*)|(\'.+\'))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$")
      .hasMatch(email);

  @computed
  Function get loginPressed =>
      (isEmailValid && isPasswordValid && !isLoading) ? loginUser : null;

  @action
  void logoutUser() {
    isLoggedIn = false;
  }
}



