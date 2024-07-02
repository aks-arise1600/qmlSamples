import QtQuick 2.9
import QtQuick.Controls 2.2
import QtCharts 2.2

Item {
    id: firstPage
    anchors.fill: parent

    Text {
        id: textName_1
        anchors{
            top:parent.top
            horizontalCenter: parent.horizontalCenter
        }
        text: qsTr("Chart Details")
        font.family: "Tibetan Machine Uni"
        font.pixelSize: 45
        color: "white"
    }

    ChartView {
        id: chart1
        title: "Bar series"
        anchors{
            left: parent.left
            top: textName_1.bottom
            horizontalCenter:parent.horizontalCenter
        }

        theme: ChartView.ChartThemeBrownSand
        width: parent.width-100
        height: parent.height-100
        legend.alignment: Qt.AlignBottom
        antialiasing: true

        BarSeries {
            id: series1
            axisX: BarCategoryAxis { categories: ["2019", "2020", "2021", "2022", "2023", "2024" ] }
            BarSet { label: "Bob"; values: [2, 2, 3, 4, 5, 6] }
            BarSet { label: "Susan"; values: [5, 1, 2, 4, 1, 7] }
            BarSet { label: "James"; values: [3, 5, 8, 13, 5, 8] }
            BarSet { label: "Alex"; values: [1, 3, 6, 10, 12, 15 ] }
        }
    }

}
