import 'package:flutter/material.dart';

import '../search_bar.dart';

import 'base_app_bar.dart';

class MySliverAppBar extends SliverAppBar {
  static const Widget defaultBottom = SizedBox();

  MySliverAppBar({
    this.key,
    this.context,
    this.callback,
    this.bottom,
    this.expandedHeight,
    this.title = BaseAppBar.defaultTitle,
    this.flexibleSpace,
    this.pinned = false,
    this.snap = false,
    this.floating = false,
    this.forceElevated = false,
    this.actionButtons = BaseAppBar.defaultActions,
  }) : assert(context != null, 'Provide context params to MySliverAppBar'),
       super(key: key);

  final Key key;

  final bool forceElevated;
  final bool pinned;
  final bool floating;
  final bool snap;
  final bool primary = true;
  final Widget flexibleSpace;
  final PreferredSizeWidget bottom;
  final double expandedHeight;
  final BuildContext context;
  final List actionButtons;
  final Widget title;
  final Function callback;

  @override
  List<Widget> get actions => actionButtons.map(
    (action) => BaseAppBar.actions(context, callback)[action]
  ).toList();
}