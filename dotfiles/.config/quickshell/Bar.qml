import Quickshell
import QtQuick

Scope {

    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData
            screen: modelData

            anchors {
                top: true
                left: true
                right: true
            }
            color: "Purple"
            implicitHeight: 30

            ClockWidget {
                anchors.centerIn: parent
            }
        }
    }
}
