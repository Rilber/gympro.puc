import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'cadastrar_adm_widget.dart' show CadastrarAdmWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CadastrarAdmModel extends FlutterFlowModel<CadastrarAdmWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for emailAdm widget.
  TextEditingController? emailAdmController;
  String? Function(BuildContext, String?)? emailAdmControllerValidator;
  String? _emailAdmControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Insira um email válido';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for senhaAdm widget.
  TextEditingController? senhaAdmController;
  late bool senhaAdmVisibility;
  String? Function(BuildContext, String?)? senhaAdmControllerValidator;
  // State field(s) for confSenhaAdm widget.
  TextEditingController? confSenhaAdmController;
  late bool confSenhaAdmVisibility;
  String? Function(BuildContext, String?)? confSenhaAdmControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    emailAdmControllerValidator = _emailAdmControllerValidator;
    senhaAdmVisibility = false;
    confSenhaAdmVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    emailAdmController?.dispose();
    senhaAdmController?.dispose();
    confSenhaAdmController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
