import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    id: root
    visible: true
    visibility: "FullScreen"
    color: "#154360"
    width: 640
    height: 480
    title: qsTr("qml-qt Sample 005")


    Image {
        id: backgroung_img
        anchors.fill: parent
        source: "qrc:/images/bg2.png"
//        opacity: 0.4
//        z: -1
    }

    TopBar {
        id: topbar
    }

    Rectangle {
        id: main_loader
        anchors.top: topbar.bottom
        height: parent.height-100
        width: parent.width
        color: "transparent"

        SwipeWidget {
            id : s_widget
            anchors.fill: parent
        }
    }

    BottomBar{
        id: bottombar
    }
}
