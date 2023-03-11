import 'package:flutter/material.dart';
import 'package:rse_test_app/views/widgets/secondary_button.dart';
import 'package:rse_test_app/views/widgets/text_field_normal.dart';

import '../../theme.dart';

class DaftarPage extends StatefulWidget {
  const DaftarPage({Key? key}) : super(key: key);

  @override
  State<DaftarPage> createState() => _DaftarPageState();
}

class _DaftarPageState extends State<DaftarPage> {
  final _formKey = GlobalKey<FormState>();

  bool _isPasswordObscure = true;
  bool _isKonfirmasiPasswordObscure = true;
  final _namaLengkapController = TextEditingController();
  final _nikController = TextEditingController();
  final _kkController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _konfirmasiPasswordController = TextEditingController();

  String _namaLengkap = "";
  String _nik = "";
  String _kk = "";
  String _username = "";
  String _password = "";
  String _konfirmasiPassword = "";

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      // Lakukan operasi selanjutnya dengan menggunakan nilai _email dan _password
    }
  }

  @override
  void dispose() {
    _namaLengkapController.dispose();
    _nikController.dispose();
    _kkController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    _konfirmasiPasswordController.dispose();
    super.dispose();
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    } else if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }
    return null;
  }

  String? _validateConfirmPassword(String? value) {
    if (value!.isEmpty) {
      return 'Confirm Password is required';
    }
    if (value != _passwordController.text) {
      return 'Passwords do not match';
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
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/daftar.png',
                              height: MediaQuery.of(context).size.height * 0.3,
                              width: MediaQuery.of(context)
                                  .size
                                  .width, // ubah sesuai kebutuhan
                              fit: BoxFit.cover, // sesuaikan dengan kebutuhan
                            ),
                          ),
                          SizedBox(height: largeMargin),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Daftar",
                                  style:
                                      titleBold27.copyWith(color: blueColor)),
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
                                            _namaLengkapController,
                                            "Nama lengkap",
                                            "Masukkan nama lengkap anda",
                                            "Masukkan nama lengkap anda!",
                                            (value) {
                                              _namaLengkap = value!;
                                            },
                                          ),
                                          SizedBox(height: defaultMargin),
                                          TextFieldNormal(
                                            TextInputType.number,
                                            TextInputAction.next,
                                            _nikController,
                                            "NIK",
                                            "Masukkan NIK anda",
                                            "Masukkan NIK anda!",
                                            (value) {
                                              _nik = value!;
                                            },
                                          ),
                                          SizedBox(height: defaultMargin),
                                          TextFieldNormal(
                                            TextInputType.number,
                                            TextInputAction.next,
                                            _kkController,
                                            "KK",
                                            "Masukkan No. KK anda",
                                            "Masukkan No. KK anda!",
                                            (value) {
                                              _kk = value!;
                                            },
                                          ),
                                          SizedBox(height: defaultMargin),
                                          TextFieldNormal(
                                            TextInputType.text,
                                            TextInputAction.next,
                                            _usernameController,
                                            "Username",
                                            "Masukkan username anda",
                                            "Masukkan username anda!",
                                            (value) {
                                              _username = value!;
                                            },
                                          ),
                                          SizedBox(height: defaultMargin),
                                          TextFormField(
                                              keyboardType: TextInputType.text,
                                              textInputAction:
                                                  TextInputAction.next,
                                              controller: _passwordController,
                                              obscureText: _isPasswordObscure,
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 12,
                                                        vertical:
                                                            defaultMargin),
                                                suffixIcon: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      _isPasswordObscure =
                                                          !_isPasswordObscure;
                                                    });
                                                  },
                                                  child: Icon(
                                                    _isPasswordObscure
                                                        ? Icons.visibility
                                                        : Icons
                                                            .visibility_off, // menampilkan icon mata terbuka atau tertutup sesuai kondisi _isObscure
                                                  ),
                                                ),
                                                filled: true,
                                                fillColor: formBackgroundColor,
                                                labelText: "Password",
                                                labelStyle:
                                                    textRegular14.copyWith(
                                                        color: greyTextColor),
                                                floatingLabelStyle:
                                                    textRegular16,
                                                hintText:
                                                    "Masukkan password anda",
                                                hintStyle:
                                                    textRegular14.copyWith(
                                                        color: greyTextColor),
                                                border: InputBorder.none,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6), // border radius
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: blueColor,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6), // border radius
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: redColor,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6), // border radius
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: redColor,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6), // border radius
                                                ),
                                              ),
                                              validator: _validatePassword,
                                              onChanged: (value) {
                                                _formKey.currentState!
                                                    .validate();
                                              },
                                              onSaved: (value) {
                                                _password = value!;
                                              }),
                                          SizedBox(height: defaultMargin),
                                          TextFormField(
                                              keyboardType: TextInputType.text,
                                              textInputAction:
                                                  TextInputAction.next,
                                              controller:
                                                  _konfirmasiPasswordController,
                                              obscureText:
                                                  _isKonfirmasiPasswordObscure,
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 12,
                                                        vertical:
                                                            defaultMargin),
                                                suffixIcon: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      _isKonfirmasiPasswordObscure =
                                                          !_isKonfirmasiPasswordObscure;
                                                    });
                                                  },
                                                  child: Icon(
                                                    _isKonfirmasiPasswordObscure
                                                        ? Icons.visibility
                                                        : Icons
                                                            .visibility_off, // menampilkan icon mata terbuka atau tertutup sesuai kondisi _isObscure
                                                  ),
                                                ),
                                                filled: true,
                                                fillColor: formBackgroundColor,
                                                labelText:
                                                    "Konfirmasi password",
                                                labelStyle:
                                                    textRegular14.copyWith(
                                                        color: greyTextColor),
                                                floatingLabelStyle:
                                                    textRegular16,
                                                hintText:
                                                    "Masukkan konfirmasi password anda",
                                                hintStyle:
                                                    textRegular14.copyWith(
                                                        color: greyTextColor),
                                                border: InputBorder.none,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6), // border radius
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: blueColor,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6), // border radius
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: redColor,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6), // border radius
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: redColor,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6), // border radius
                                                ),
                                              ),
                                              validator:
                                                  _validateConfirmPassword,
                                              onChanged: (value) {
                                                _formKey.currentState!
                                                    .validate();
                                              },
                                              onSaved: (value) {
                                                _password = value!;
                                              }),
                                        ],
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
                                                MaterialStateProperty.all<
                                                    Color>(blueColor),
                                            foregroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(lightTextColor),
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    Size(
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                        48))),
                                        onPressed: () {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            _formKey.currentState!.save();
                                            // perform login with _email and _password
                                          }
                                        },
                                        child:
                                            Text("Daftar", style: textBold14),
                                      ),
                                      SizedBox(
                                        height: defaultMargin,
                                      ),
                                      Column(
                                        children: [
                                          Text("Sudah punya akun?",
                                              style: title12.copyWith(
                                                  color: greyTextColor)),
                                          SizedBox(
                                            height: xsmallMargin,
                                          ),
                                          const SecondaryButton(
                                              "Login", "/login")
                                        ],
                                      )
                                    ]),
                              ),
                            ],
                          )
                        ])));
          }
        }));
  }
}
