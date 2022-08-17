// Copyright (C) 2019 Potix Corporation. All Rights Reserved
// History: 2019-01-21 12:16
// Author: jumperchen<jumperchen@potix.com>
import 'package:old_socket_io_client/src/engine/transport/transport.dart';

class Transports {
  static Transport newInstance(String name, options) =>
      throw UnimplementedError('Should not invoke this method!');
  static List<String> upgradesTo(String from) =>
      throw UnimplementedError('Should not invoke this method!');
}
