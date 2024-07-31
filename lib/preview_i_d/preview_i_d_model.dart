import '/flutter_flow/flutter_flow_util.dart';
import 'preview_i_d_widget.dart' show PreviewIDWidget;
import 'package:flutter/material.dart';

class PreviewIDModel extends FlutterFlowModel<PreviewIDWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
