import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 800
    height: 480
    visible: true
    color: "black"
    //color: "red"
    //color: "orange"
    //color: "#BCE53C"   //https://htmlcolorcodes.com/color-picker/
    //color: "#28B22F"
    //color: "#B2288F"
    title: qsTr("Warning Indicator TelTail")

//    Text {
//        id: test_1
//        font.family: "Helvetica"
//        font.pointSize: 24
//        text: qsTr("Dinesh")
//        anchors.centerIn: parent
//    }
    Image
    {
        id: telTailBaseID
        source: "/images/Teltail_base.png"
//        x : 0
//        y : 0
        anchors.centerIn: parent
    }

    Image
    {
        id: cheakEngineID
        source: "/images/Check-Engine-Light_1.png"
//        x : 0
//        y : 0
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
