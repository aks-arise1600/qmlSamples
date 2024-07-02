import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Item {
    id: progressBar

    Slider {
        id: slider
        anchors.centerIn: parent
        width: 500
        height: 50
        from: 0
        value: 0
        to: 100
        stepSize: 1
        snapMode: Slider.SnapOnRelease
        onValueChanged:
        {
            //console.log("slider " + value)
        }
    }

    Rectangle {
        id: progress_bar_border
        anchors{
            centerIn: parent
            leftMargin: 40
            topMargin: 20
        }
        width: 800;  height: 40

        border.width: 0.05 * height
        radius: 0.5 * height

        Rectangle {
            visible: value > minimum
            x: 0.1 * parent.height;  y: 0.1 * parent.height
            width: Math.max(height,
                            Math.min((value - minimum) / (maximum - minimum) * (parent.width - 0.2 * parent.height),
                                     parent.width - 0.2 * parent.height)) // clip
            height: 0.8 * parent.height
            color: 'blue'
            radius: parent.radius
        }
    }


    // Functions

    function set_progress(){
        if(value <= 50)
            value += 1
        if(value > 50)
            value = 0
        //        console.log(value)
        slider.value = value
    }

    property double maximum: 50
    property double value:   0
    property double minimum: 0

    Timer {
        id: pbTimer
        interval: 1000
        repeat: true
        running: true
        triggeredOnStart: true
        onTriggered: set_progress()
    }
}
