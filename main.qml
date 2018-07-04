import QtQuick 2.3
import QtQuick.Controls 1.2
import "Components"

App {

    id: main
    title: "Emmi Componentes"

    //640 de entrada
    //960 de saida

    //property int efeito1: 640
    //property int efeito2: 960

    property int efeito1: 300
    property int efeito2: 200

    Item {
        x: 0
        y: main.wm.height
        width: main.width
        height: main.height

        Rectangle {
            anchors.fill: parent
            color: "#fff"
        }

        Image {
            id: bg
            anchors.fill: parent
            source: "bg.jpg"
        }

        Rectangle {
            anchors.fill: parent
            color: "#000"
            opacity: 0.3
        }
    }

    Container {

        Center {
            maxWidth: parent.height

        Button {
            x: 13
            y: 52
            text: "Atualizar"
            size: 12
        }

        Button {
            x: 110
            y: 35
            text: "Atualizar"
            size: 26
        }

        Button {
            x: 270
            y: 10
            text: "Atualizar"
            size: 48

            onClick: {
                swit.actived = !swit.actived
            }
        }

        Label {
            x: 20
            y: 113
        }

        Controller {
            id: control
            x: 167
            y: 122
            width: 80
            height: 12
            percentage: 50

            onChange: {
                console.log(value, perValue)
            }
        }

        Controller {
            id: control2
            x: 277
            y: 126
            width: 200
            height: 8
            percentage: 0

            onChange: {
                console.log(value, perValue)
            }
        }


        Switch {
            id: swit
            x: 30
            y: 230
            height: 14
            value: false

            onChange: {
                console.log(value)
            }
        }

        TextField {
            id: textField
            x: 100
            y: 230
            autoSize: true
            text: "Digite algo aqui!"

            onClicked: {
                console.log("Clicado!") 
            }
        }

        TextField {
            id: textField2
            x: 400
            y: 230
            size: 16
            maxLength: 16
            autoSize: true
            text: "testando campo"
        }

        TextField {
            id: textField3
            x: 400
            y: 280
            width: 180
            height: 30
            size: 14
            maxLength: 14
            clearClickPrimary: false
            text: "test"
        }

        Select {
            x: 20
            y: 350
            w: 350
            multSelected: false
            selected: 1
            titles: ['SHENOIS DEV', 'Qml component', 'ok itś good', 'Project Emmi']

            onSelectedChange: {
                console.log('index:', selectedIndex, selectedIndexes)
            }
        }

    }

    }
}
