import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'list13_property_listview_copy_widget.dart'
    show List13PropertyListviewCopyWidget;
import 'package:flutter/material.dart';

class List13PropertyListviewCopyModel
    extends FlutterFlowModel<List13PropertyListviewCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for inputSearch widget.
  FocusNode? inputSearchFocusNode;
  TextEditingController? inputSearchTextController;
  String? Function(BuildContext, String?)? inputSearchTextControllerValidator;
  List<DiningHallsRecord> simpleSearchResults = [];
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    inputSearchFocusNode?.dispose();
    inputSearchTextController?.dispose();

    tabBarController?.dispose();
  }
}
