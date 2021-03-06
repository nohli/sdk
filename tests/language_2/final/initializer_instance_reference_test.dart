// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart = 2.9

// Dart2js regression test. Error in initializer might be report with the wrong
// current element.

class C {
  const C();

  final x = 1;
  final y = x; /*@compile-error=unspecified*/
}

main() {
  const C().y;
}
