import QtQuick 2.3
import QtQuick.Controls 1.2
import "Components"


App {
    id: main
    visible: true
    width: 970
    height: 600
    title: qsTr("App Test Components")

    //property int efeito1: 640
    //property int efeito2: 960

    property int efeito1: 300
    property int efeito2: 200

    Item {
        x: 0
        y: 0
        width: main.width
        height: main.height

        Rectangle {
            anchors.fill: parent
            color: "#fff"
        }

        /*
        Image {
            id: bg
            anchors.fill: parent
            source: "bg.jpg"
        }

        Rectangle {
            anchors.fill: parent
            color: "#000"
            opacity: 0.3
        }*/
    }

    Container {
        id: conteiner
        Center {
            maxWidth : parent.width

            Tabs {
                id: tabs
                titles: ['Animes', 'Paisagens']
                textColor: "#000"

                TabRepeater {
                    id: itemsTab
                    TabContent {
                        Loader {
                            anchors.fill: parent
                            source: "qrc:/Tab" + (index + 1) + ".qml"
                        }
                    }
                }
            }
        }
    }
}
