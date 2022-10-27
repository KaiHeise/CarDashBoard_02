import QtQuick
import heise.de
//import QtQml.StateMachine
import QtQuick.Controls



Window {
    id: haupt
    width: 1200
    height: 700
    visible: true
    //color: "black"
    title: qsTr("Multifunktionsanzeige")

    Image {
        id: rueck
        visible: false
        source: "RueckBild_02.jpg"
        //sourceSize.width: 1200
        //sourceSize.height: 700
    }

/*
    Image {
        id: bkgr
        source: "bkgr_001_ab_728.png"
    }       // ende Image background

*/

    Item {
        id: anzeigen

        Text {
            id: l_dreh
            x: 100
            y: 375      // war 136
            width: 154
            height: 113
            text: qsTr("Drehzahl")
            font.pixelSize: 37
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
            font.italic: true
        }
        TextEdit {
            id: drehzahl
            x: 300
            y: 383      // war 144
            width: 80
            height: 20
            text: key_tra.gas_prop_akt
            font.pixelSize: 72
            overwriteMode: true
        }

        Text {
            id: l_gang
            x: 500
            y: 375
            width: 154
            height: 113
            text: qsTr("Gang")
            font.pixelSize: 27
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
            font.italic: true
        }
        TextEdit {
            id: gang
            x: 570
            y: 340
            width: 80
            height: 20
            text: key_tra.gang_prop_akt
            font.bold: true
            font.pixelSize: 37
            overwriteMode: true
        }



        Text {
            id: l_temp
            x: 780
            y: 375      // war 136
            width: 154
            height: 113
            text: qsTr("Tempo")
            font.pixelSize: 37
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
            font.italic: true
        }
        TextEdit {
            id: temp
            x: 1000
            y: 383      // war 144
            width: 80
            height: 20
            text: key_tra.tempo_p_akt
            font.pixelSize: 72
            overwriteMode: true
        }

        Text {
            id: l_km
            x: 830
            y: 480      // war 410
            width: 154
            height: 113
            text: qsTr("ges km")
            font.pixelSize: 27
            //  horizontalAlignment: Text.AlignHCenter
          //  verticalAlignment: Text.AlignVCenter
            font.bold: true
            font.italic: true
        }
        TextEdit {
            id: km
            x: 940
            y: 470      // war 406
            width: 80
            height: 42
            font.pixelSize: 33
            text:key_tra.geskm_p

            overwriteMode: true
        }





        Text {
            id: l_meld
            x: 350
            y: 620
            width: 154
            height: 213
            font.pixelSize: 23
            text: qsTr("Meldung:")
        }



        TextEdit {
            id: mel
            x: 500
            y: 610
            width: 180
            height: 20
            font.pixelSize: 33
            font.bold: true
           // text:                               key_tra.Mel_p
            overwriteMode: true
        }





        RoundButton {
            id: button
            x: 100
            y: 620
            width: 100
            height: 47
            //color: "red"
            text: qsTr("Start /Stop")
        }
//----------------- Zeigerinstrumente -- Anfang -----------------------
/*


                    V E R S I O N E N _ A







*/



//----------------- Zeigerinstrumente Anzeigen -- Ende -----------------------



        Image {
            id: tacho
            x: 900; y: 190
            source: "second.png"
            transformOrigin: Item.TopRight
            rotation: 25

        }







        Image {
            id: dzm
            x: 300; y: 190
            source: "second.png"
            rotation: 25
            transformOrigin: Item.TopRight
        }
// -----
/*
        Item {
            id: id_root
            property int value: 0

            Rectangle {
                id: id_speed

                property int numberIndexs: 15
                property int startAngle: 234
                property int angleLength: 18
                property int maxSpeed: 280

                anchors.centerIn: parent
                height: Math.min(id_root.width, id_root.height)
                width: height
                radius: width/2
                color: "black"
                border.color: "light green"
                border.width: id_speed.height * 0.02

                Canvas {
                    id:canvas
                    anchors.fill: parent
                    contextType: "2d"
                    rotation: 145
                    antialiasing: true

                    onPaint: {
                        var context = canvas.getContext('2d');
                        context.strokeStyle = "blue";
                        context.lineWidth = id_speed.height * 0.05 / 2;
                        context.beginPath();
                        context.arc(id_speed.height / 2, id_speed.height / 2, id_speed.height / 2 - id_speed.height * 0.05, 0, Math.PI * 1.1, false);
                        context.stroke();

                        context.strokeStyle = "red";
                        context.lineWidth = id_speed.height * 0.05 / 2;
                        context.beginPath();
                        context.arc(id_speed.height / 2, id_speed.height / 2, id_speed.height / 2 - id_speed.height * 0.05, Math.PI * 1.1, Math.PI * 1.4, false);
                        context.stroke();
                    }
                }

                Repeater {
                    model: id_speed.numberIndexs

                    Item {
                        height: id_speed.height/2
                        transformOrigin: Item.Bottom
                        rotation: index * id_speed.angleLength + id_speed.startAngle
                        x: id_speed.width/2

                        Rectangle {
                            height: id_speed.height * 0.05
                            width: height / 2
                            color: "light green"
                            antialiasing: true
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.top: parent.top
                            anchors.topMargin: id_speed.height * 0.03
                        }

                        Text {
                            anchors {
                                horizontalCenter: parent.horizontalCenter
                            }
                            x: 600
                            y: 400
                            color: "light green"
                            rotation: 360 - (index * id_speed.angleLength + id_speed.startAngle)
                            text: index * (id_speed.maxSpeed / (id_speed.numberIndexs - 1))
                            font.pixelSize: id_speed.height * 0.05
                            font.family: "Comic Sans MS"
                        }
                    }
                }
            }

            Rectangle {
                id: id_center
x: 300
y: 300
               // anchors.centerIn: parent
                height:                 68                // id_speed.height*0.1
                width: height
                radius: width/2
                color: "light green"
            }

            Text {
                anchors {
                    horizontalCenter: 600, 600              //parent.horizontalCenter
                    top:              200, 200              //id_speed.verticalCenter
                    topMargin:        50                    // id_speed.height * 0.1
                }
                text: "Speed\n km/h"
                color: "light green"
                font.pixelSize:      18                     // id_speed.height * 0.1
                font.family: "Comic Sans MS"
            }


        }
*/


    }   // Ende von Item anzeigen


    Transf {
        id: key_tra

        onMeld_change:
            mel.text=key_tra.meld_p

        onKm_change:
            km.text = key_tra.geskm_p     // ist getter READ

            // key_tra.geskm_p = km.text
// wie richtig? oder nur OHNE, dann wie schreiben?


  //        DZ_p_ch: {   }
  //        onDZ_ch: drehzahl.text = key_tra.DZ_ch

    }

    Item {
        id: it
        property bool gestartet: false
        property bool losgelassen: false
        property int zeifak: 26
        focus: true                                     // damit es aktiviert ist
        Keys.onPressed: {

    // km.text=key_tra.geskm_p

            if(event.key === Qt.Key_S) {if( gestartet === false) {gestartet=true; key_tra.start_p = true; drehzahl.text = key_tra.gas_prop_akt;temp.text=key_tra.tempo_p_akt;
                                                            mel.text="gestartet ..."; key_tra.geskm_p = km.text;tacho.rotation = key_tra.tempo_p_akt; dzm.rotation = key_tra.gas_prop_akt/zeifak}
                                        else {gestartet=false; key_tra.start_p = false; key_tra.gang_prop = 0; gang.text = key_tra.gang_prop_akt; drehzahl.text = key_tra.gas_prop_akt;
                                                            temp.text=key_tra.tempo_p_akt; mel.text="Motor aus";tacho.rotation = key_tra.tempo_p_akt; dzm.rotation = key_tra.gas_prop_akt/zeifak}}

            else if(event.key === Qt.Key_Up) {key_tra.gas_prop_up = 1; drehzahl.text = key_tra.gas_prop_akt; temp.text=key_tra.tempo_p_akt; km.text=key_tra.geskm_p;
                                                tacho.rotation = key_tra.tempo_p_akt; dzm.rotation = key_tra.gas_prop_akt/zeifak }
            else if(event.key === Qt.Key_Down) {key_tra.brems_prop = -1;drehzahl.text = key_tra.gas_prop_akt; temp.text=key_tra.tempo_p_akt; km.text=key_tra.geskm_p;
                                                tacho.rotation = key_tra.tempo_p_akt; dzm.rotation = key_tra.gas_prop_akt/zeifak }

            else if(event.key === Qt.Key_Control) key_tra.kuppl_p = true

            else if(event.key === Qt.Key_R) {key_tra.gang_prop = -1; gang.text = key_tra.gang_prop_akt; drehzahl.text = key_tra.gas_prop_akt; temp.text=key_tra.tempo_p_akt; mel.text=key_tra.meld_p}
            else if(event.key === Qt.Key_0) {key_tra.gang_prop = 0; gang.text = key_tra.gang_prop_akt; drehzahl.text = key_tra.gas_prop_akt; temp.text=key_tra.tempo_p_akt; mel.text=key_tra.meld_p}
            else if(event.key === Qt.Key_1) {key_tra.gang_prop = 1; gang.text = key_tra.gang_prop_akt; drehzahl.text = key_tra.gas_prop_akt; temp.text=key_tra.tempo_p_akt; km.text=key_tra.geskm_p; mel.text=key_tra.meld_p}
            else if(event.key === Qt.Key_2) {key_tra.gang_prop = 2; gang.text = key_tra.gang_prop_akt; drehzahl.text = key_tra.gas_prop_akt; temp.text=key_tra.tempo_p_akt; km.text=key_tra.geskm_p; mel.text=key_tra.meld_p}
            else if(event.key === Qt.Key_3) {key_tra.gang_prop = 3; gang.text = key_tra.gang_prop_akt; drehzahl.text = key_tra.gas_prop_akt; temp.text=key_tra.tempo_p_akt; km.text=key_tra.geskm_p; mel.text=key_tra.meld_p}
            else if(event.key === Qt.Key_4) {key_tra.gang_prop = 4; gang.text = key_tra.gang_prop_akt; drehzahl.text = key_tra.gas_prop_akt; temp.text=key_tra.tempo_p_akt; km.text=key_tra.geskm_p; mel.text=key_tra.meld_p}
            else if(event.key === Qt.Key_5) {key_tra.gang_prop = 5; gang.text = key_tra.gang_prop_akt; drehzahl.text = key_tra.gas_prop_akt; temp.text=key_tra.tempo_p_akt; km.text=key_tra.geskm_p; mel.text=key_tra.meld_p}

            if(gang.text === "-1") {rueck.visible=true; anzeigen.visible=false }
            else {rueck.visible=false; anzeigen.visible=true}

//            console.log("up gedrückt... \n")

//            gang.text = key_tra.gang_prop_akt
//            drehzahl.text = key_tra.gas_prop_akt
//            temp.text=key_tra.tempo_p_akt



        }   // ende Keys.onPressed








    }

    // ende Item it

}           // ende Window haupt
