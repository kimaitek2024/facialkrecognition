import '/flutter_flow/flutter_flow_util.dart';
import 'add_photo_widget.dart' show AddPhotoWidget;
import 'package:flutter/material.dart';

class AddPhotoModel extends FlutterFlowModel<AddPhotoWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
