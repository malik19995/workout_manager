import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';

///
///
/// Page Divider
class PageDivider extends StatelessWidget {
  final double topPadding, bottomPadding;
  final double thickness;
  final double indents;
  const PageDivider(
      {super.key,
      this.topPadding = 16,
      this.bottomPadding = 16,
      this.thickness = 2,
      this.indents = 16});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: topPadding,
        bottom: bottomPadding,
      ),
      child: Divider(
        thickness: thickness,
        indent: indents,
        endIndent: indents,
        color: AppColors.primary,
      ),
    );
  }
}
