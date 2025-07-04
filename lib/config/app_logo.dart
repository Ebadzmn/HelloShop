import 'package:e_commarce_v2_flutter/config/assets_path.dart';
import 'package:flutter/widgets.dart';

class Applogo extends StatelessWidget {
  const Applogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(AssetsPath.logo);
  }
}
