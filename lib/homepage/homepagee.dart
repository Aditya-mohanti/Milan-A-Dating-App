import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../model/user_model.dart';
import '../widgets/choice_button.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/user_card.dart';
import '../widgets/user_image_small.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Column(
        children: [
          Draggable(
            child: UserCard(user: User.users[0]),
            feedback: UserCard(user: User.users[0]),
            childWhenDragging: UserCard(user: User.users[1]),
            onDragEnd: (drag){
              if(drag.velocity.pixelsPerSecond.dx<0){
                print('Swippedleft');
              }
              else{
                print('Swipped Right');
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 60.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ChoiceButton
                  (width: 60,
                    height: 60,
                    size: 25,
                    color: Theme.of(context).colorScheme.secondary,
                    icon: Icons.clear_rounded,
                  hasGradient: false,
                ),
                ChoiceButton
                  (width: 80,
                  height: 80,
                  size: 30,
                  color: Colors.white,
                  icon: Icons.favorite,
                  hasGradient: true,
                ),
                ChoiceButton
                  (width: 60,
                  height: 60,
                  size: 25,
                  color: Theme.of(context).colorScheme.secondary,
                  icon: Icons.watch_later,
                  hasGradient: false,
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}




