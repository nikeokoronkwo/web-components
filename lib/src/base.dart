import 'dart:js_interop';

import 'package:web/web.dart';

extension CustomElement on HTMLElement {
  external void connectedCallback();

  external void disconnectedCallback();

  external void attributeChangedCallback(
      String name, String oldValue, String newValue);

  @JS('attachShadow')
  external ShadowRoot _attachShadow(ShadowRootOptions options);

  ShadowRoot attachShadow(
          {required String mode,
          bool? clonable,
          bool? delegatesFocus,
          String? slotAssignment}) =>
      _attachShadow(ShadowRootOptions(
          mode: mode,
          clonable: clonable,
          delegatesFocus: delegatesFocus,
          slotAssignment: slotAssignment));
}

extension type ShadowRootOptions._(JSObject _) implements JSObject {
  external ShadowRootOptions(
      {String mode,
      bool? clonable,
      bool? delegatesFocus,
      String? slotAssignment});
  external String get mode;
  external bool get clonable;
  external bool get delegatesFocus;
  external String slotAssignment;
}
