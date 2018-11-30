import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    visibility: "FullScreen"

    width: Screen.width
    height: Screen.height

    title: qsTr("Digital Clock")

    Rectangle {
        anchors.fill: parent

        color: "black"

        MouseArea {
            anchors.fill: parent
            onClicked: Qt.quit()
        }

        /* Time/Clock */
        Text {
            id: clock

            color: "white"

            font.pixelSize: 600

            anchors.centerIn: parent

            rotation: -90

            /* Updates Clock */
            function update() {
                clock.text = new Date().getHours() + ":" + new Date().getMinutes()
            }

        }

        /* Updates clock every second */
        Timer {
            id: textimer
            interval: 60000
            repeat: true
            running: true
            triggeredOnStart: true
            onTriggered: clock.update()
        }
    }
}
