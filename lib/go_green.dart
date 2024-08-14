import 'dart:async';
import 'dart:ui';

import 'package:flame/camera.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:game_flame/constants.dart';
import 'package:game_flame/player.dart';

class GoGreen extends FlameGame {
  GoGreen()
      : super(
            camera: CameraComponent.withFixedResolution(
                height: gameHeight, width: gameWidth));

  @override
  FutureOr<void> load() {
    super.load();
    world.add(Player(
      position: Vector2(-(gameWidth / 4), 0),
      radius: gameWidth / 4,
    ));
    world.add(Player(
      position: Vector2((gameWidth / 4), 0),
      radius: gameWidth / 2,
      color: Colors.blue,
    ));
  }

  @override
  Color backgroundColor() {
    return Colors.green;
  }
}
