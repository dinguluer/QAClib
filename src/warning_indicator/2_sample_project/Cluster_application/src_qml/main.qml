import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    width: 800
    height: 480
    x : 0
    y : 0
    visible: true
    color: "black"
    title: qsTr("Warning Indicator TelTail")
    id : window_id

    Rectangle
    {
        id: cluster_rect


        TelTailBase{
            id: telTailBaseID
            anchors.centerIn: parent
//            x : 100
//            y : 250
        }

        CheckEngine{
            id: cheakEngineID
            anchors.centerIn: parent
//            x : 100
//            y : 250
        }
        anchors.centerIn: parent
    }

    Timer{
        id:tellTailUpdate
        interval: 1000  // 1000 msec
        running: true
        repeat: true
        property real  teltail_toggel: 0

        onTriggered: {

            switch (teltail_toggel)
            {
            case 0 :
                cheakEngineID.visible = true;
                teltail_toggel++;
                break;
            case 1 :
                cheakEngineID.visible = false;
                teltail_toggel = 0;
                break;
            }
        }
    }

}
