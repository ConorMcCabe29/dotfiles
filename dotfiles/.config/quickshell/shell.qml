import Quickshell
import Quickshell.Io // for Process
import QtQuick

PanelWindow {
    anchors {
        top: true
        left: true
        right: true
    }

    implicitHeight: 30

    Text {
        id: clock
        anchors.centerIn: parent

        Process {
            id: daterefresh
            command: ["date"]
            running: true

            stdout: StdioCollector {
                onStreamFinished: clock.text = this.text
            }
        }
        Timer {
            interval: 1000
            running: true
            repeat: true
            onTriggered: daterefresh.running = true
        }
    }
}
