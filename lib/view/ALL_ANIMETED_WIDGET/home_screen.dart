import 'package:flutter/material.dart';
import 'widgets/animated_container_demo.dart';
import 'widgets/animated_opacity_demo.dart';
import 'widgets/animated_align_demo.dart';
import 'widgets/animated_cross_fade_demo.dart';
import 'widgets/animated_switcher_demo.dart';
import 'widgets/hero_demo.dart';
import 'widgets/fade_transition_demo.dart';
import 'widgets/scale_transition_demo.dart';
import 'widgets/slide_transition_demo.dart';
import 'widgets/rotation_transition_demo.dart';
import 'widgets/size_transition_demo.dart';
import 'widgets/animated_positioned_demo.dart';
import 'widgets/animated_modal_barrier_demo.dart';
import 'widgets/animated_list_demo.dart';
import 'widgets/animated_icon_demo.dart';
import 'widgets/animated_physical_model_demo.dart';
import 'widgets/animated_size_demo.dart';
import 'widgets/animated_padding_demo.dart';
import 'widgets/tween_animation_builder_demo.dart';
import 'widgets/animated_builder_demo.dart';
import 'widgets/animated_default_text_style_demo.dart';
import 'widgets/animated_theme_demo.dart';
import 'widgets/animated_widget_demo.dart';
import 'widgets/implicitly_animated_widget_demo.dart';
import 'widgets/positioned_transition_demo.dart';
import 'widgets/decorated_box_transition_demo.dart';
import 'widgets/default_text_style_transition_demo.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Widgets Demo'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('AnimatedContainer'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AnimatedContainerDemo())),
          ),
          ListTile(
            title: Text('AnimatedOpacity'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AnimatedOpacityDemo())),
          ),
          ListTile(
            title: Text('AnimatedAlign'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AnimatedAlignDemo())),
          ),
          ListTile(
            title: Text('AnimatedCrossFade'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AnimatedCrossFadeDemo())),
          ),
          ListTile(
            title: Text('AnimatedSwitcher'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AnimatedSwitcherDemo())),
          ),
          ListTile(
            title: Text('Hero'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => HeroDemo())),
          ),
          ListTile(
            title: Text('FadeTransition'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => FadeTransitionDemo())),
          ),
          ListTile(
            title: Text('ScaleTransition'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ScaleTransitionDemo())),
          ),
          ListTile(
            title: Text('SlideTransition'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => SlideTransitionDemo())),
          ),
          ListTile(
            title: Text('RotationTransition'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => RotationTransitionDemo())),
          ),
          ListTile(
            title: Text('SizeTransition'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => SizeTransitionDemo())),
          ),
          ListTile(
            title: Text('AnimatedPositioned'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AnimatedPositionedDemo())),
          ),
          ListTile(
            title: Text('AnimatedModalBarrier'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AnimatedModalBarrierDemo())),
          ),
          ListTile(
            title: Text('AnimatedList'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AnimatedListDemo())),
          ),
          ListTile(
            title: Text('AnimatedIcon'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AnimatedIconDemo())),
          ),
          ListTile(
            title: Text('AnimatedPhysicalModel'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AnimatedPhysicalModelDemo())),
          ),
          ListTile(
            title: Text('AnimatedSize'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AnimatedSizeDemo())),
          ),
          ListTile(
            title: Text('AnimatedPadding'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AnimatedPaddingDemo())),
          ),
          // ListTile(
          //   title: Text('TweenAnimationBuilder'),
          //   onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => TweenAnimationBuilderDemo())),
          // ),
          ListTile(
            title: Text('AnimatedBuilder'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AnimatedBuilderDemo())),
          ),
          ListTile(
            title: Text('AnimatedDefaultTextStyle'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AnimatedDefaultTextStyleDemo())),
          ),
          ListTile(
            title: Text('AnimatedTheme'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AnimatedThemeDemo())),
          ),
          ListTile(
            title: Text('AnimatedWidget'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AnimatedWidgetDemo())),
          ),
          ListTile(
            title: Text('ImplicitlyAnimatedWidget'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ImplicitlyAnimatedWidgetDemo())),
          ),
          ListTile(
            title: Text('PositionedTransition'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => PositionedTransitionDemo())),
          ),
          ListTile(
            title: Text('DecoratedBoxTransition'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DecoratedBoxTransitionDemo())),
          ),
          ListTile(
            title: Text('DefaultTextStyleTransition'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DefaultTextStyleTransitionDemo())),
          ),
        ],
      ),
    );
  }
}
