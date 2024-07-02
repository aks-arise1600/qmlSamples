import QtQuick 2.9
import QtMultimedia 5.8

Rectangle {
    id: vPlayer
    property double min_width: 800
    property double min_height: 400
    property string _title: "video 0"
    color: "black"

    width: min_width
    height: min_height

    Video {
         id: video
         width : min_width - 12
         height : parent.height - 32
         source: "rtsp://admin:admin123@192.168.10.10/mpeg4"

         anchors{
             top: parent.top
             topMargin: 6
             left: parent.left
             leftMargin: 6
         }

         autoPlay: true
         opacity: 1.0
         fillMode: Image.Stretch
         muted: false

        /*
         MouseArea {
             anchors.fill: parent
             onClicked: {
                 video.play()
             }
         }

         focus: true
         Keys.onSpacePressed: video.playbackState == MediaPlayer.PlayingState ? video.pause() : video.play()
         Keys.onLeftPressed: video.seek(video.position - 5000)
         Keys.onRightPressed: video.seek(video.position + 5000)
         */
     }

    Text {
        id: video_title
        text: _title
        color: "white"
        font.pixelSize: 16
        font.family: "Tibetan Machine Uni"
        anchors{
            top: video.bottom
            horizontalCenter: parent.horizontalCenter
        }
    }

    /*
    Timer {
        running: video.status == MediaPlayer.InvalidMedia; repeat: true; interval: 200;
        onTriggered: {
            video.play()
        }
    }
    */

}
