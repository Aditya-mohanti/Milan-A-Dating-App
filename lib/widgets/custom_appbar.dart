import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class CustomAppbar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        children: [
          Expanded(
            child: SvgPicture.asset(
              'assets/images/logo.svg',
              height: 50,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              'Discover',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          )
        ],
      ),
      actions: [
        IconButton(onPressed:(){} ,icon: Icon(Icons.message,color: Theme.of(context).primaryColor,)),
        IconButton(onPressed:(){}, icon: Icon(Icons.person,color: Theme.of(context).primaryColor,)),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56.0);
}