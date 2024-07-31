import '/flutter_flow/flutter_flow_util.dart';
import 'students_list_widget.dart' show StudentsListWidget;
import 'package:flutter/material.dart';

class StudentsListModel extends FlutterFlowModel<StudentsListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
