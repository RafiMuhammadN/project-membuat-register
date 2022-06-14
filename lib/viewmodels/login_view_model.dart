import 'package:project_membuat_register_ke_2/constants/route_name.dart';
import 'package:project_membuat_register_ke_2/locator.dart';
import 'package:project_membuat_register_ke_2/services/navigation_service.dart';
import 'package:project_membuat_register_ke_2/viewmodels/base_model.dart';

class LoginViewModel extends BaseModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToSignUpView(){
    _navigationService.navigateTo(SignUpViewRoute);
  }
}