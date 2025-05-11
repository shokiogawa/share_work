import 'package:audio_service/audio_service.dart';
import 'package:audio_session/audio_session.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bgm_player_service.g.dart';

@riverpod
BGMPlayerService bgmPlayerService(Ref ref) {
  return BGMPlayerService();
}

class BGMPlayerService {
  BGMPlayerService();

  final AudioPlayer _player = AudioPlayer();
  bool _isInitialized = false;

  // テスト用のBGMリスト
  // final List<AudioSource> _playlist = [
  //   AudioSource.uri(
  //     Uri.parse(
  //         'https://senmgccaddgpcsxjokld.supabase.co/storage/v1/object/public/bgm//220_long_BPM86.mp3'),
  //     tag: const MediaItem(
  //       id: '1',
  //       title: '遠くの景色',
  //       artist: 'Work BGM',
  //     ),
  //   ),
  //   AudioSource.uri(
  //     Uri.parse(
  //         'https://senmgccaddgpcsxjokld.supabase.co/storage/v1/object/public/bgm//294_long_BPM88.mp3'),
  //     tag: const MediaItem(
  //       id: '2',
  //       title: 'ソメイヨシノ',
  //       artist: 'Work BGM',
  //     ),
  //   ),
  // ];

  Future<void> initialize(AudioSource playlist) async {
    if (_isInitialized) {
      return;
    }

    // オーディオセッションの設定
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration(
      avAudioSessionCategory: AVAudioSessionCategory.playback,
      avAudioSessionCategoryOptions: AVAudioSessionCategoryOptions.duckOthers,
      avAudioSessionMode: AVAudioSessionMode.defaultMode,
      androidAudioAttributes: AndroidAudioAttributes(
        contentType: AndroidAudioContentType.music,
        usage: AndroidAudioUsage.media,
      ),
      androidWillPauseWhenDucked: true,
    ));

    // プレイリストの設定
    await _player.setAudioSource(
      ConcatenatingAudioSource(children: [playlist]),
      initialIndex: 0,
    );

    _isInitialized = true;
  }

  Future<void> seek(Duration duration) async {
    await _player.seek(duration);
  }

  Future<void> play() async {
    // if (!_isInitialized) {
    //   await initialize();
    // }
    await _player.play();
  }

  Future<void> pause() async {
    await _player.pause();
  }

  Future<void> stop() async {
    await _player.stop();
  }

  Future<void> next() async {
    await _player.seekToNext();
  }

  Future<void> previous() async {
    await _player.seekToPrevious();
  }

  Stream<PlayerState> get playerStateStream => _player.playerStateStream;

  Stream<Duration?> get positionStream => _player.positionStream;

  Stream<Duration?> get durationStream => _player.durationStream;

  Stream<int?> get currentIndexStream => _player.currentIndexStream;

  bool get isPlaying => _player.playing;

  Duration? get position => _player.position;

  Duration? get duration => _player.duration;

  int? get currentIndex => _player.currentIndex;

  void dispose() {
    _player.dispose();
  }
}
