// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart = 2.9

library private_selector_lib;

import 'selector_test.dart';

bool executed = false;

class A {
  public() {
    new B()._private();
  }

  _private() {
    executed = true;
  }
}
