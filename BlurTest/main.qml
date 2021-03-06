import QtQuick 2.6
import QtQuick.Window 2.2
import com.zitro.zone.qmlcomponents 1.0

Window {
    visible: true
    width  : 1680
    height : 1050
    title  : qsTr("Hello World")

    Image {
        id: image
        anchors.fill: parent
        source: "pasiaje.jpg"
    }

    Blur {
        id    : blur
        x     : 0
        y     : 0
        width : 1680
        height: 391
        z     : 10

        Text {
            anchors.centerIn: parent
            color: "white"
            text: qsTr("Drag me!")
            font.pixelSize: 24
            font.bold: true
        }

        MouseArea{
            id: dragArea
            anchors.fill: parent
            drag.target : parent
        }
    }

}
