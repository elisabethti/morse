import 'package:flutter/material.dart';
import 'package:rse_test_app/views/widgets/secondary_button.dart';
import '../../theme.dart';
import '../widgets/text_field_normal.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  bool _isObscure = true;
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  String _username = "";
  String _password = "";

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Masukkan password anda!';
    } else if (value.length < 8) {
      return 'Password minimal 8 karakter';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > constraints.maxHeight) {
            return Container();
          } else {
            // Portrait
            return SingleChildScrollView(
              padding: EdgeInsets.only(
                  left: screenLRMargin,
                  right: screenLRMargin,
                  top: screenTopMargin,
                  bottom: MediaQuery.of(context).size.height * 0.05),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                          color: blueColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.asset(
                        'assets/images/login.png',
                        width: MediaQuery.of(context)
                            .size
                            .width, // ubah sesuai kebutuhan
                        fit: BoxFit.cover, // sesuaikan dengan kebutuhan
                      ),
                    ),
                    SizedBox(height: xlargeMargin),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Login",
                            style: titleBold27.copyWith(color: blueColor)),
                        SizedBox(height: defaultMargin),
                        Form(
                          key: _formKey,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  children: [
                                    TextFieldNormal(
                                        TextInputType.text,
                                        TextInputAction.next,
                                        _usernameController,
                                        "Username",
                                        "Masukkan username anda",
                                        'Masukkan username anda!', (value) {
                                      _username = value!;
                                    }),
                                    SizedBox(height: defaultMargin),
                                    TextFormField(
                                      textInputAction: TextInputAction.done,
                                      controller: _passwordController,
                                      obscureText: _isObscure,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 12,
                                            vertical: defaultMargin),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _isObscure = !_isObscure;
                                            });
                                          },
                                          child: Icon(
                                            _isObscure
                                                ? Icons.visibility
                                                : Icons
                                                    .visibility_off, // menampilkan icon mata terbuka atau tertutup sesuai kondisi _isObscure
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: formBackgroundColor,
                                        labelText: "Password",
                                        labelStyle: textRegular14.copyWith(
                                            color: greyTextColor),
                                        floatingLabelStyle: textRegular16,
                                        hintText: "Masukkan password anda",
                                        hintStyle: textRegular14.copyWith(
                                            color: greyTextColor),
                                        border: InputBorder.none,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.circular(
                                              6), // border radius
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: blueColor, width: 1),
                                          borderRadius: BorderRadius.circular(
                                              6), // border radius
                                        ),
                                      ),
                                      validator: _validatePassword,
                                      onChanged: (value) {
                                        _formKey.currentState!.validate();
                                      },
                                      onSaved: (value) {
                                        _password = value!;
                                      },
                                    ),
                                  ],
                                ),
                                SizedBox(height: defaultMargin),
                                GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                      context: context,
                                      isScrollControlled: true,
                                      isDismissible: false,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(largeMargin),
                                        ),
                                      ),
                                      builder: (BuildContext context) {
                                        return SingleChildScrollView(
                                          padding:
                                              MediaQuery.of(context).viewInsets,
                                          child: IntrinsicHeight(
                                            child: Column(
                                              children: [
                                                ListTile(
                                                  title: Text(
                                                    'Lupa Password',
                                                    style: textRegular14,
                                                  ),
                                                  trailing: IconButton(
                                                    icon:
                                                        const Icon(Icons.close),
                                                    onPressed: () =>
                                                        Navigator.of(context)
                                                            .pop(),
                                                  ),
                                                ),
                                                SizedBox(height: defaultMargin),
                                                Text(
                                                  'Enter your email address to reset your password.',
                                                  style: textRegular14.copyWith(
                                                      color: greyTextColor),
                                                ),
                                                SizedBox(height: defaultMargin),
                                                Container(
                                                    padding: EdgeInsets.only(
                                                        left: defaultMargin,
                                                        right: defaultMargin,
                                                        bottom: defaultMargin),
                                                    child: Column(
                                                      children: [
                                                        TextFormField(
                                                          decoration:
                                                              InputDecoration(
                                                            hintText:
                                                                'Email Address',
                                                            hintStyle: textRegular14
                                                                .copyWith(
                                                                    color:
                                                                        greyTextColor),
                                                            contentPadding:
                                                                EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        12,
                                                                    vertical:
                                                                        defaultMargin),
                                                            border:
                                                                OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          xsmallMargin),
                                                              borderSide:
                                                                  BorderSide
                                                                      .none,
                                                            ),
                                                            filled: true,
                                                            fillColor:
                                                                formBackgroundColor,
                                                          ),
                                                          validator: (value) {
                                                            if (value!
                                                                .isEmpty) {
                                                              return 'Please enter some text';
                                                            }
                                                            return null;
                                                          },
                                                        ),
                                                        SizedBox(
                                                            height:
                                                                defaultMargin),
                                                        TextButton(
                                                          style: ButtonStyle(
                                                              shape: MaterialStateProperty
                                                                  .all<
                                                                      RoundedRectangleBorder>(
                                                                RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                ),
                                                              ),
                                                              backgroundColor:
                                                                  MaterialStateProperty
                                                                      .all<Color>(
                                                                          blueColor),
                                                              foregroundColor:
                                                                  MaterialStateProperty
                                                                      .all<Color>(
                                                                          lightTextColor),
                                                              fixedSize: MaterialStateProperty
                                                                  .all<Size>(Size(
                                                                      MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width,
                                                                      48))),
                                                          onPressed: () {},
                                                          child: Text(
                                                              "Reset Password",
                                                              style:
                                                                  textBold14),
                                                        ),
                                                      ],
                                                    )),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: const Text(
                                    'Lupa Password?',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                                SizedBox(height: defaultMargin),
                                TextButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              blueColor),
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              lightTextColor),
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(Size(
                                              MediaQuery.of(context).size.width,
                                              48))),
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      _formKey.currentState!.save();
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Column(children: [
                                          Text(_username),
                                          Text(_password),
                                        ]),
                                      ));
                                      // perform login with _email and _password
                                    }
                                  },
                                  child: Text("Login", style: textBold14),
                                ),
                                SizedBox(
                                  height: defaultMargin,
                                ),
                                Column(
                                  children: [
                                    Text("Belum punya akun?",
                                        style: title12.copyWith(
                                            color: greyTextColor)),
                                    SizedBox(
                                      height: xsmallMargin,
                                    ),
                                    const SecondaryButton("Daftar", "/daftar")
                                  ],
                                )
                              ]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }
        }));
  }
}
