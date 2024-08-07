import 'package:ecommerceapp/common/widgets/customshapes/circularcontainer.dart';
import 'package:ecommerceapp/features/shop/screens/home/widgets/curvededgeswidget.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child: SizedBox(
        height: 400,
        child: Container(
          color: TColors.primary,
          padding: EdgeInsets.only(bottom: 0),
          child: Stack(
            children: [
              //background custom shapes
              Positioned(
                  top: -150,
                  right: -250,
                  child: TCircularContainer(
                    backgroundColor: TColors.textWhite.withOpacity(0.1),
                  )),
              Positioned(
                  top: 100,
                  right: -300,
                  child: TCircularContainer(
                    backgroundColor: TColors.textWhite.withOpacity(0.1),
                  )),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
