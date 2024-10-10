import QtQuick 2.0
import QtQuick.Controls 2.2


Rectangle {
    id: bottom_bar

    height: 50
    color: "#6f5555"
    anchors {
        left: parent.left
        right: parent.right
        bottom: parent.bottom
    }

    Text {
        id: name_text
        anchors{
            top:parent.top
            left: parent.left
            topMargin: 10
            leftMargin: 10
        }
        font.pixelSize: 10
        color: "white"
        text: qsTr("XYZ abc Pvt. Ltd.")
    }

    Button {
        id: btn_exit_full
        anchors {
            top:parent.top
            right: parent.right
            topMargin: 5
            rightMargin: 5
        }
        flat: true
        width: 100
//        text: "Back"
        Image {
            id: img_back
            source: "qrc:/images/back.png"
            anchors.fill: parent
        }
        onClicked: {
            console.log("Back clicked")
            s_widget.set_backIndex()
        }
    }
}
