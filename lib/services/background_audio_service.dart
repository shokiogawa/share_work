import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class BackgroundAudioService {
  factory BackgroundAudioService() => _instance;
  BackgroundAudioService._internal();
  static final BackgroundAudioService _instance = BackgroundAudioService._internal();

  YoutubePlayerController? _controller;
  bool _isPlaying = false;

  void initialize(String videoId) {
    _controller?.dispose();
    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        enableCaption: false,
        forceHD: false,
        loop: true,
        isLive: false,
      ),
    );
  }

  void play() {
    if (_controller != null) {
      _controller!.play();
      _isPlaying = true;
    }
  }

  void pause() {
    if (_controller != null) {
      _controller!.pause();
      _isPlaying = false;
    }
  }

  void dispose() {
    _controller?.dispose();
    _controller = null;
    _isPlaying = false;
  }

  bool get isPlaying => _isPlaying;
  YoutubePlayerController? get controller => _controller;
} 