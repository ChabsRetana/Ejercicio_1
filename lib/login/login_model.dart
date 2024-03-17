import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for EmailIngreso widget.
  FocusNode? emailIngresoFocusNode;
  TextEditingController? emailIngresoController;
  String? Function(BuildContext, String?)? emailIngresoControllerValidator;
  // State field(s) for PasswordIngreso widget.
  FocusNode? passwordIngresoFocusNode;
  TextEditingController? passwordIngresoController;
  late bool passwordIngresoVisibility;
  String? Function(BuildContext, String?)? passwordIngresoControllerValidator;
  // State field(s) for EmailResgistro widget.
  FocusNode? emailResgistroFocusNode;
  TextEditingController? emailResgistroController;
  String? Function(BuildContext, String?)? emailResgistroControllerValidator;
  // State field(s) for PasswordRegistro widget.
  FocusNode? passwordRegistroFocusNode;
  TextEditingController? passwordRegistroController;
  late bool passwordRegistroVisibility;
  String? Function(BuildContext, String?)? passwordRegistroControllerValidator;
  // State field(s) for PasswordRegistroConfirmacion widget.
  FocusNode? passwordRegistroConfirmacionFocusNode;
  TextEditingController? passwordRegistroConfirmacionController;
  late bool passwordRegistroConfirmacionVisibility;
  String? Function(BuildContext, String?)?
      passwordRegistroConfirmacionControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordIngresoVisibility = false;
    passwordRegistroVisibility = false;
    passwordRegistroConfirmacionVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailIngresoFocusNode?.dispose();
    emailIngresoController?.dispose();

    passwordIngresoFocusNode?.dispose();
    passwordIngresoController?.dispose();

    emailResgistroFocusNode?.dispose();
    emailResgistroController?.dispose();

    passwordRegistroFocusNode?.dispose();
    passwordRegistroController?.dispose();

    passwordRegistroConfirmacionFocusNode?.dispose();
    passwordRegistroConfirmacionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
