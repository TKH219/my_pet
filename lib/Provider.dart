/*
  Create by HaTK
  On 7/31/2019
*/

import 'package:flutter/material.dart';

Type _typeOf<T>() => T;

abstract class BlocBase {
  void dispose();
}

class Provider<T extends BlocBase> extends StatefulWidget {
  final Widget child;
  final T bloc;

  Provider({Key key, @required this.child, @required this.bloc})
      : super(key: key);

  @override
  _ProviderState<T> createState() => _ProviderState<T>();

  static T of<T extends BlocBase>(BuildContext context) {
    final type = _typeOf<_ProviderInherited<T>>();
    _ProviderInherited<T> provider =
        context.ancestorInheritedElementForWidgetOfExactType(type)?.widget;
    return provider?.bloc;
  }
}

class _ProviderState<T extends BlocBase> extends State<Provider<T>> {
  @override
  void dispose() {
    widget.bloc?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _ProviderInherited<T>(
      bloc: widget.bloc,
      child: widget.child,
    );
  }
}

class _ProviderInherited<T> extends InheritedWidget {
  _ProviderInherited({
    Key key,
    @required Widget child,
    @required this.bloc,
  }) : super(key: key, child: child);

  final T bloc;

  @override
  bool updateShouldNotify(_ProviderInherited oldWidget) => false;
}
