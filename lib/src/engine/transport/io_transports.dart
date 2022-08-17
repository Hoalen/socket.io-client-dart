// Copyright (C) 2019 Potix Corporation. All Rights Reserved
// History: 2019-01-21 12:15
// Author: jumperchen<jumperchen@potix.com>
import 'package:old_socket_io_client/src/engine/transport/io_websocket_transport.dart';
import 'package:old_socket_io_client/src/engine/transport/transport.dart';

class Transports {
  static Transport newInstance(String name, options) {
    // only support websocket here.
    return IOWebSocketTransport(options);
  }

  static List<String> upgradesTo(String from) {
    if ('polling' == from) {
      return ['websocket'];
    }
    return [];
  }
}
