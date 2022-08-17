// Copyright (C) 2020 Potix Corporation. All Rights Reserved
// History: 2020/11/27 11:47 AM
// Author: jumperchen<jumperchen@potix.com>

import 'package:old_socket_io_client/socket_io_client.dart';
import 'package:old_socket_io_common/src/util/event_emitter.dart';

/// Option Builder to help developer to construct an options map.
class OptionBuilder {
  final Map<String, dynamic> _opts;
  OptionBuilder() : _opts = <String, dynamic>{};
  Map<String, dynamic> build() => _opts;

  OptionBuilder disableAutoConnect() {
    _opts['autoConnect'] = false;
    return this;
  }

  OptionBuilder disableForceNew() {
    _opts.remove('forceNew');
    return this;
  }

  OptionBuilder disableForceNewConnection() {
    _opts.remove('force new connection');
    return this;
  }

  OptionBuilder disableMultiplex() {
    _opts.remove('multiplex');
    return this;
  }

  OptionBuilder disableReconnection() {
    _opts['reconnection'] = false;
    return this;
  }

  OptionBuilder enableAutoConnect() {
    _opts.remove('autoConnect');
    return this;
  }

  OptionBuilder enableForceNew() {
    _opts['forceNew'] = true;
    return this;
  }

  OptionBuilder enableForceNewConnection() {
    _opts['force new connection'] = true;
    return this;
  }

  OptionBuilder enableMultiplex() {
    _opts['multiplex'] = true;
    return this;
  }

  OptionBuilder enableReconnection() {
    _opts.remove('reconnection');
    return this;
  }

  OptionBuilder setExtraHeaders(Map<String, dynamic> headers) {
    _opts['extraHeaders'] = headers;
    return this;
  }

  OptionBuilder setPath(String path) {
    _opts['path'] = path;
    return this;
  }

  OptionBuilder setQuery(Map query) {
    _opts['query'] = query;
    return this;
  }

  OptionBuilder setRandomizationFactor(num factor) {
    _opts['randomizationFactor'] = factor;
    return this;
  }

  OptionBuilder setReconnectionAttempts(num attempts) {
    _opts['reconnectionAttempts'] = attempts;
    return this;
  }

  OptionBuilder setReconnectionDelay(int delay) {
    _opts['reconnectionDelay'] = delay;
    return this;
  }

  OptionBuilder setReconnectionDelayMax(int delayMax) {
    _opts['reconnectionDelayMax'] = delayMax;
    return this;
  }

  OptionBuilder setTimeout(int timeout) {
    _opts['timeout'] = timeout;
    return this;
  }

  OptionBuilder setTransports(List<String> transports) {
    _opts['transports'] = transports;
    return this;
  }
}

/// Default event listeners for dart way API.
extension DartySocket on Socket {
  void onConnect(EventHandler handler) {
    on('connect', handler);
  }

  void onConnectError(EventHandler handler) {
    on('connect_error', handler);
  }

  void onConnecting(EventHandler handler) {
    on('connecting', handler);
  }

  void onConnectTimeout(EventHandler handler) {
    on('connect_timeout', handler);
  }

  void onDisconnect(EventHandler handler) {
    on('disconnect', handler);
  }

  void onError(EventHandler handler) {
    on('error', handler);
  }

  void onPing(EventHandler handler) {
    on('ping', handler);
  }

  void onPong(EventHandler handler) {
    on('pong', handler);
  }

  void onReconnect(EventHandler handler) {
    on('reconnect', handler);
  }

  void onReconnectAttempt(EventHandler handler) {
    on('reconnect_attempt', handler);
  }

  void onReconnectError(EventHandler handler) {
    on('reconnect_error', handler);
  }

  void onReconnectFailed(EventHandler handler) {
    on('reconnect_failed', handler);
  }

  void onReconnecting(EventHandler handler) {
    on('reconnecting', handler);
  }
}
