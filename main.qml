import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import "./"


ApplicationWindow {
    id: root
    width: 320
    height: 260
    visible: true
    title: qsTr("School")
    Configuration{
        id:config
    }
    property var inputobj:{
        "name":"",
        "designation":"",
    }
    property var settingsArray: [inputobj]
    property int settingsIndex: 0
    Users{
        id:usertable
        width:parent.width/3
        height: parent.height/3
    }

    menuBar: MenuBar {
            Menu {
                title: "Students"
                MenuItem {
                    text: "attendance";
                    onTriggered:usertable.visible=true
                }
                MenuItem { text: "scores"}
            }
            Menu {
                title: "Complaints"
                MenuItem {
                    text: "yelp"
                }
                MenuItem { text: "ConsumerAffairs"}
                MenuItem { text: "BBB"}
            }
        }

}



