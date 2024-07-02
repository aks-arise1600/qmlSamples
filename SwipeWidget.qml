import QtQuick 2.9
import QtQuick.Controls 2.2
import QtCharts 2.2
import QtQuick.Layouts 1.3

Item {
    id: swipe_widget

    SwipeView{
        id: swipe_view

        currentIndex: 0
        anchors.fill: parent

        Item {
            id: page_1

            Text {
                id: textName_1
                anchors{
                    top:parent.top
                    horizontalCenter: parent.horizontalCenter
                }
                text: qsTr("First Page")
                font.family: "Tibetan Machine Uni"
                font.pixelSize: 45
                color: "white"
            }

            CircularProgressBar {
                id: c_progress_1
                anchors{
                    top:textName_1.bottom
                    horizontalCenter: parent.horizontalCenter
                }

                lineWidth: 20
                value: (p_bar.value/100)*2
                size: 150
                secondaryColor: "#e0e0e0"
                primaryColor: "#f44336"

                Text {
                    text: parseInt(c_progress_1.value * 100) + "%"
                    anchors.centerIn: parent
                    font.pointSize: 20
                    color: c_progress_1.primaryColor
                }
            }

            Progress_Bar {
                id: p_bar
                anchors.centerIn: parent
            }
        }

        Item {
            id: page_2
            TabWidget {
                id: tabPage
                anchors.fill: parent
            }
        }

        Item {
            id: page_3
            BarChart {
                id: cchart
                anchors.fill: parent
            }
        }

        Item {
            id: page_4

            Text {
                id: textName_4
                anchors{
                    top:parent.top
                    horizontalCenter: parent.horizontalCenter
                }
                text: qsTr("Table Widget Example")
                font.family: "Tibetan Machine Uni"
                font.pixelSize: 45
                color: "white"
            }

            TabledData {
                id: tData
                anchors.centerIn: parent
            }
        }

        Item {
            id: page_5

            Text {
                id: textName_5
                anchors{
                    top:parent.top
                    horizontalCenter: parent.horizontalCenter
                }
                text: qsTr("Camera View")
                font.family: "Tibetan Machine Uni"
                font.pixelSize: 45
                color: "white"
            }

            VideoPlayer {
                id: camPlayer
                _title:"Room 2"
                anchors {
                    top : textName_5.bottom
                    topMargin: 10
                    left: parent.left
                    leftMargin: (parent.width/2)-(camPlayer.min_width/2)
                }
            }
        }
    }


    PageIndicator {
        id: indicator

        count: swipe_view.count
        currentIndex: swipe_view.currentIndex

        anchors.bottom: swipe_view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

    function set_index0()
    {
        swipe_view.currentIndex = 0
    }

    function set_backIndex()
    {
        if(swipe_view.currentIndex > 0)
            swipe_view.currentIndex = swipe_view.currentIndex - 1
    }
}
