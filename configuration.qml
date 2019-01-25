import QtQuick 2.0

Item {
    property bool play: false
    property bool errorFound: false

    property var errorMessageText: ""
    property var errorNameText: ""
    property var barColors: "#1FF7F7F0"
    property var barTitleColorsPut: "#F0AAAAAA"
    property var cellColor: "#FFEEEEEE"
    property var cellHighlightColor: "#FFAAAAAA"
    property var borderColors: "#F0AAAAAA"
    property int boarderWidths: 1

    property var fpsValue: 0
}
