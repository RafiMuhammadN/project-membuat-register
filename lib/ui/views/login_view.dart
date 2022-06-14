import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:project_membuat_register_ke_2/constants/const.dart';
import 'package:project_membuat_register_ke_2/ui/shared/shared_style.dart';
import 'package:project_membuat_register_ke_2/ui/shared/ui_helper.dart';
import 'package:project_membuat_register_ke_2/ui/views/sign_up_view.dart';
import 'package:project_membuat_register_ke_2/ui/widgets/button_widget.dart';
import 'package:project_membuat_register_ke_2/ui/widgets/text_field_widget.dart';
import 'package:project_membuat_register_ke_2/viewmodels/login_view_model.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ViewModelBuilder<LoginViewModel>.reactive(
        viewModelBuilder: () => LoginViewModel(),
        builder:  (context, model, child) => Scaffold(
          body: LoadingOverlay(
            isLoading: model.busy,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        verticalSpaceMedium,
                        Text("Project Register", style: titleTextStyle,),
                        verticalSpaceSmall,
                        Image.asset(
                          'assets/logo.png',
                        width: size.width*0.3,
                        height: size.height*0.3,
                        ),
                        verticalSpaceMedium,
                        TextFieldWidget(
                          hintText: 'E-mail',
                          icon: Icons.email,

                          keyboardType: TextInputType.emailAddress,
                          isPassword: false,
                          colorIcon: color_main
                        ),
                        verticalSpaceSmall,
                        TextFieldWidget(
                          hintText: 'Password',
                          icon: Icons.lock,

                          keyboardType: TextInputType.emailAddress,
                          isPassword: true,
                          colorIcon: color_main
                        ),
                        verticalSpaceLarge,
                        ButtonWidget(
                          title: 'login',
                          onPressedFunction: (){},
                          bgColor: color_main
                        ),
                        verticalSpaceSmall,
                        InkWell(
                          onTap: (){},
                          child: Text(
                            'Forget Password',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: color_main
                            ),
                          )
                        ),
                        verticalSpaceSmall,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Don\'t have an account? '),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => SignUpView())
                                  );
                                },
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none,
                                    color: color_main
                                  ),
                                ),
                              )
                            ],
                        )
                      ]
                    ),
                  ),
                ),
              ),
            ),
          )
        ),
    );
  }
}
