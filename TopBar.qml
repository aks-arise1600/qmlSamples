import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2

Rectangle {
    id: top_bar
    height: 50
    anchors {
        left: parent.left
        right: parent.right
        top: parent.top
    }
    color: "grey"

    RowLayout {
        id: button_row
        height: top_bar.height
        width: top_bar.width / 5
        spacing:5
        anchors {
            left: top_bar.left
            top: top_bar.top
            leftMargin: 5
        }

        Button {
            id:btn_home
            width: parent.width/4
            text: "Home"

            onClicked: {
                console.log("Home clicked")
                s_widget.set_index0()
            }
        }

        Button {
            id:btn_help
            width: parent.width/4
            text: "About"

            onClicked: {
                console.log("About clicked")
                about_box.open()
            }
        }

        Button {
            id:btn_close
            width: parent.width/4
            text: "Close"

            onClicked: Qt.quit()
        }
    }

    MessageDialog {
        id: about_box
        title: "About Us"
        text: "
                   Qt/QML Sample 005
                   Version : 1.0
                   Description: This is a demo example of qt/qml UI

                   Copyright 2020-2025 The XYZabcd Pvt. Ltd.
                   All rights reserved."
        icon: StandardIcon.Information
        standardButtons: StandardButton.Ok
        onAccepted: {
            close()
        }
    }


    function set()
    {
        status_datetime.text = Qt.formatDateTime(new Date(), "ddd, MMM dd yyyy  hh:mm:ss")
    }

    Text {
        id: status_datetime
        anchors {
            right: parent.right
            top: parent.top
            rightMargin: 10
        }
        height: parent.height
        width: parent.width / 4
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignRight
        color: "white"
        font.pixelSize: 20
    }


    Timer {
        id: dtTimer
        interval: 1000
        repeat: true
        running: true
        triggeredOnStart: true
        onTriggered: set()
    }
}
