import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:cima_box/models/details_model.dart';

class VideoPlayerScreen extends StatefulWidget {
  final Map<String, List<dynamic>> qualities;
  final String startQuality;
  final DetailsModel? detailsModel;
  final int currentSeasonIndex;
  final int currentEpisodeIndex;
  final String sourceLink;

  const VideoPlayerScreen({
    super.key,
    required this.qualities,
    required this.startQuality,
    required this.detailsModel,
    required this.currentSeasonIndex,
    required this.currentEpisodeIndex,
    required this.sourceLink,
  });
/// Builds a [Scaffold] with an [AppBar] and a [Text] widget
/// displaying the video quality and source link.
  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _videoController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    _initializePlayer(widget.sourceLink);
    print("=========================");
    print(widget.sourceLink);
  }

  Future<void> _initializePlayer(String url) async {
    _videoController = VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
    await _videoController.initialize();
    _chewieController = ChewieController(
      videoPlayerController: _videoController,
      autoPlay: true,
      looping: false,
      allowedScreenSleep: false,
      // optionally: allow quality switching if you want to implement it
    );
    setState(() {});
  }

  @override
  void dispose() {
    _videoController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('مشغل الفيديو')),
      body: _chewieController != null && _chewieController!.videoPlayerController.value.isInitialized
          ? Chewie(controller: _chewieController!)
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
