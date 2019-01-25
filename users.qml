import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle{
    visible: false
    color: "green"

    ListView {
        id: listView
        anchors.fill: parent
        model: listModel
        delegate: Rectangle {
            width: listView.width
            height: listView.height / 4

            Text {
                text: hour
                anchors.centerIn: parent
                //                MouseArea{
                //                    anchors.fill: parent
                //                    onClicked: {
                //                        receiver.receiveFromQml(78)
                //                    }
                //                }
            }
        }
    }

    ListModel {
        id: listModel

        Component.onCompleted: {
            request('http://127.0.0.1:8000/floor/', function (o) {

                // log the json response
                console.log(o.responseText);

                // translate response into object
//                var d = eval('new Object(' + o.responseText + ')');
//                console.log("d",d)
//                console.log("floor_name:",d.floor_name)

////                // access elements inside json object with dot notation
////                emailLabel.text = d.email
////                urlLabel.text = d.url
////                sinceLabel.text = d.since
////                bioLabel.text = d.bio

//            });

//            for (var i = 0; i < d; i++) {
//                append(i.floor_name);
//            }
        }

//        function createListElement() {
//            return {
//                hour: "01"
//            };
//        }
    }
    function request(url, callback) {
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = (function(myxhr) {
            return function() {
                callback(myxhr);
            }
        })(xhr);
        xhr.open('GET', url, true);
        xhr.send('');
    }
}
