import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'form_cadastro_widget.dart' show FormCadastroWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class FormCadastroModel extends FlutterFlowModel<FormCadastroWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNome widget.
  TextEditingController? txtNomeController;
  final txtNomeMask = MaskTextInputFormatter(
      mask: 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA');
  String? Function(BuildContext, String?)? txtNomeControllerValidator;
  String? _txtNomeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Insira o Nome';
    }

    if (val.length < 3) {
      return 'Insira o Nome';
    }

    return null;
  }

  // State field(s) for dpdFuncao widget.
  String? dpdFuncaoValue;
  FormFieldController<String>? dpdFuncaoValueController;
  // State field(s) for txtCpf widget.
  TextEditingController? txtCpfController;
  final txtCpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? txtCpfControllerValidator;
  // State field(s) for txtIdade widget.
  TextEditingController? txtIdadeController;
  final txtIdadeMask = MaskTextInputFormatter(mask: '##');
  String? Function(BuildContext, String?)? txtIdadeControllerValidator;
  // State field(s) for DpdSexo widget.
  String? dpdSexoValue;
  FormFieldController<String>? dpdSexoValueController;
  // State field(s) for txtCep widget.
  TextEditingController? txtCepController;
  final txtCepMask = MaskTextInputFormatter(mask: '########');
  String? Function(BuildContext, String?)? txtCepControllerValidator;
  String? _txtCepControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Insira um CEP Válido';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Get Cep)] action in Button widget.
  ApiCallResponse? apiResultfex;
  // State field(s) for txtRua widget.
  TextEditingController? txtRuaController;
  String? Function(BuildContext, String?)? txtRuaControllerValidator;
  // State field(s) for txtNumero widget.
  TextEditingController? txtNumeroController;
  String? Function(BuildContext, String?)? txtNumeroControllerValidator;
  // State field(s) for txtBairro widget.
  TextEditingController? txtBairroController;
  String? Function(BuildContext, String?)? txtBairroControllerValidator;
  // State field(s) for txtCidade widget.
  TextEditingController? txtCidadeController;
  String? Function(BuildContext, String?)? txtCidadeControllerValidator;
  // State field(s) for txtEstado widget.
  TextEditingController? txtEstadoController;
  String? Function(BuildContext, String?)? txtEstadoControllerValidator;
  // State field(s) for txtTelefone widget.
  TextEditingController? txtTelefoneController;
  final txtTelefoneMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? txtTelefoneControllerValidator;
  // State field(s) for txtEmail widget.
  TextEditingController? txtEmailController;
  String? Function(BuildContext, String?)? txtEmailControllerValidator;
  String? _txtEmailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtNomeControllerValidator = _txtNomeControllerValidator;
    txtCepControllerValidator = _txtCepControllerValidator;
    txtEmailControllerValidator = _txtEmailControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    txtNomeController?.dispose();
    txtCpfController?.dispose();
    txtIdadeController?.dispose();
    txtCepController?.dispose();
    txtRuaController?.dispose();
    txtNumeroController?.dispose();
    txtBairroController?.dispose();
    txtCidadeController?.dispose();
    txtEstadoController?.dispose();
    txtTelefoneController?.dispose();
    txtEmailController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
