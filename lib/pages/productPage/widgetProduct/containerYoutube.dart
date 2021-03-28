import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ContainerYoutube extends StatefulWidget {
  @override
  _ContainerYoutubeState createState() => _ContainerYoutubeState();
}

class _ContainerYoutubeState extends State<ContainerYoutube> {

  @override
  void initState() {
    super.initState();
    this._controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId('https://www.youtube.com/watch?v=8YcP5Uj1CnI&ab_channel=AureaAlimentos'),
      flags: YoutubePlayerFlags(
        hideControls: true,
        mute: false,
        autoPlay: true,
        disableDragSeek: true,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    )..addListener(_videoPlayerListner);
  }

  void _videoPlayerListner() {
    print(_controller.value.playerState.toString());
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  YoutubePlayerController _controller;
  bool _isPlayerReady = false;
  YoutubePlayer player;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(0.3, 0.8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(100)
        ),
        child: YoutubePlayer(         
    controller: _controller,
    showVideoProgressIndicator: true,
    progressColors: ProgressBarColors(
        playedColor: Colors.red,
        handleColor: Colors.red,
    ),
    onReady: (){
      _controller.addListener(_videoPlayerListner);
    },
),
      height: 225,
      width: 350,
    ));
  }
}