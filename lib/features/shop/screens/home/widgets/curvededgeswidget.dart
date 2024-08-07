import 'package:ecommerceapp/common/widgets/customshapes/circularcontainer.dart';
import 'package:ecommerceapp/common/widgets/customshapes/curvededges.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class TCurvedEdgesWidget extends StatelessWidget {
  const TCurvedEdgesWidget({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: child,
    );
  }
}
