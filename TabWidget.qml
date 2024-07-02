import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2


Item {
    id: tab_view

    TabBar{
        id: bar
        width: parent.width
        anchors{
            top: parent.top
            left: parent.left
            right: parent.right
        }

        TabButton {
            text: qsTr("One")
            height: 50
        }

        TabButton {
            text: qsTr("Two")
        }

        TabButton {
            text: qsTr("Three")
        }
    }

    StackLayout{
        id: stack_layout
        anchors {
            top: bar.bottom
        }

        width: parent.width
        height: parent.height - bar.height
        currentIndex: bar.currentIndex

        Rectangle {
            id: tab_one
            color: "#254117"
            gradient: Gradient {
                GradientStop {
                    position: 0.00;
                    color: "#254117";
                }
                GradientStop {
                    position: 0.50;
                    color: "#fff1d0";
                }
                GradientStop {
                    position: 0.50;
                    color: "#fff1d0";
                }
                GradientStop {
                    position: 1.00;
                    color: "#254117";
                }
            }

            Text {
                id: one_tab_text
                text: qsTr("ONE'S WIDGET")
                font.family: "Tibetan Machine Uni"
                style: Text.Outline
                anchors.centerIn: parent
                color: "#a4c805"
                font.pixelSize: 40
            }
        }

        Rectangle {
            id: tab_two
            color: "#622F22"

            Text {
                id: two_tab_text
                text: qsTr("TWO'S WIDGET")
                font.family: "Tibetan Machine Uni"
                anchors{
                    top:parent.top
                    horizontalCenter: parent.horizontalCenter
                    topMargin: 15
                }
                style: Text.Outline
                color: "#FFFFFF"
                font.pixelSize: 40
            }

            Image {
                id: img_two
                anchors.centerIn: parent
                source: "qrc:/images/Logo-2.png"

                width: 500
                height: 220
            }
        }

        Rectangle {
            id: tab_three
            color: "#026875"
            gradient: Gradient {
                GradientStop {
                    position: 0.00;
                    color: "#026875";
                }
                GradientStop {
                    position: 1.00;
                    color: "#ffffff";
                }
            }

            Text {
                id: three_tab_text
                text: qsTr("Three's Widget")
                font.family: "Caladea"
                font.italic: true
                anchors.centerIn: parent
                color: "#f1410c"
                font.pixelSize: 60
            }
        }
    }
}
