import 'dart:js_util';

import 'package:web_components/web_components.dart' as wc;
import 'package:web/web.dart';
import 'dart:js_interop';
import 'dart:js_interop_unsafe';

@JS('Object.constructor')
external JSFunction constructor(JSObject object);


JSFunction getconstructor(Object object) {
  JSObject jsObject = object.jsify() as JSObject;
  return jsObject['constructor'] as JSFunction;
}


void main() {
  
}
