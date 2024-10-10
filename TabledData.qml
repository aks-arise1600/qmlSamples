import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls 1.4
import QtQuick.XmlListModel 2.0

Item {
    id: tabled_item

    width: parent.width-100
    height: parent.height-200

    XmlListModel {
        id: emplyModel
        source: "qrc:/employee_details.xml"
        query: "/details/emply"

        XmlRole { name: "emply_id"; query: "emply_id/string()" }
        XmlRole { name: "emply_dep"; query: "emply_dep/string()" }
        XmlRole { name: "emply_role"; query: "emply_role/string()" }
        XmlRole { name: "emply_name"; query: "emply_name/string()" }
        XmlRole { name: "check"; query: "check/string()" }

    }



    TableView {
        id: table_view
        height: parent.height - 100
        width: parent.width


        TableViewColumn {
            role: "emply_id"
            title: "EMPLOYEE ID"
            width: 120

        }
        TableViewColumn {
            role: "emply_dep"
            title: "EMPLOYEE DEPARTMENT"
            width: 200
        }
        TableViewColumn {
            role: "emply_role"
            title: "EMPLOYEE ROLE"
            width: 250
        }
        TableViewColumn {
            role: "emply_name"
            title: "EMPLOYEE NAME"
            width: 250
        }
        TableViewColumn {
            role: "check"
            title: "STATUS"
            width: 50
            delegate: CheckBox {
                checked: (styleData.value == 1) ? true: false

            }
        }
        model: emplyModel

        itemDelegate: Item {
            id: item_
            height: 40
//            anchors.topMargin: 5
            Text {
//                height: 35
                anchors.verticalCenter: parent.verticalCenter
                //color: styleData.color
                elide: Text.ElideRight
                text: styleData.value
                font.family: "Tibetan Machine Uni"
                font.pixelSize: 15
                color: "#8B008B"
            }
        }

        onClicked: {
            str_id = emplyModel.get(row).emply_id
            str_name = emplyModel.get(row).emply_name
        }

    }// TableView


    property string str_id: ""
    property string str_name: ""

    Text {
        id: selected_details
        anchors{
            top: table_view.bottom
            left: parent.left
        }
        font.pixelSize: 20
        height: 45
        color: "#C8C4DF"
        text: str_id !=""? "You have selected " + str_name + " ( " + str_id + " ) ." : ""
    }

}
