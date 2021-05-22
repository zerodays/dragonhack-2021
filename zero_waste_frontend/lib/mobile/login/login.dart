import 'package:flutter/material.dart';
import 'package:gm5_utils/extended_functionality/context.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste_frontend/common/dimens.dart';
import 'package:zero_waste_frontend/common/globals.dart';
import 'package:zero_waste_frontend/common/logo.dart';
import 'package:zero_waste_frontend/common/providers/authentication_provider.dart';
import 'package:zero_waste_frontend/common/validators.dart';

class Login extends StatefulWidget {
  static const String route = '/login/';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    final provider = context.watch<AuthenticationProvider>();
    final invalid = provider.errors != null;
    return Padding(
      padding: const EdgeInsets.all(Dimens.paddingBig),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: Dimens.paddingMax),
            child: Logo(),
          ),
          Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: _username,
                  validator: nonEmptyValidator,
                  onFieldSubmitted: (_) => _tryLogin(provider),
                  autofillHints: [AutofillHints.username],
                  decoration: InputDecoration(
                    hintText: "Username",
                    border: UnderlineInputBorder(borderSide: BorderSide(color: context.theme.errorColor)),
                    focusedBorder: invalid
                        ? UnderlineInputBorder(borderSide: BorderSide(color: context.theme.errorColor, width: 2.0))
                        : null,
                    enabledBorder:
                        invalid ? UnderlineInputBorder(borderSide: BorderSide(color: context.theme.errorColor)) : null,
                  ),
                ),
                SizedBox(height: 8),
                TextFormField(
                  controller: _password,
                  autovalidateMode: invalid ? AutovalidateMode.always : null,
                  validator: (val) => invalid ? 'Wrong login details' : nonEmptyValidator(val),
                  onFieldSubmitted: (_) => _tryLogin(provider),
                  autofillHints: [AutofillHints.password],
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                ),
                SizedBox(height: Dimens.paddingMax),
                MaterialButton(
                  height: 45,
                  color: Pallette.primary,
                  onPressed: () => _tryLogin(provider),
                  child: Text(
                    "LOGIN",
                    style: context.theme.textTheme.button.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _tryLogin(AuthenticationProvider provider) {
    if (!_formKey.currentState.validate() && _password.text.isEmpty) return;
    provider.login(_username.text, _password.text);
  }
}
