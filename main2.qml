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
                titles: ['Animes', 'Paisagens', 'Womans']
                textColor: "#000"

                TabRepeater {
                    id: itemsTab

                    TabContent {

                        Label {id: tabTtile; text: tabs.titles[index]; color: "#000"}
                        ScrollView {
                            id: scroll
                            y: 50
                            width: parent.width
                            height: parent.height - 50
                        GridView {
                            id: gridview
                            //interactive: false
                            //maximumFlickVelocity: 2497
                            anchors.fill: parent
                            anchors.margins: 20
                            cellHeight: 340
                            cellWidth: 300

                            delegate: Item {
                                Column {
                                    Card {
                                        title: "My card " + index
                                        description: "Lorem ipsum etiam morbi ornare nullam gravida torquent molestie consequat euismod, molestie dictum sem vivamus aliquam felis dolor consequat. netus quisque iaculis ante leo pretium etiam dolor erat commodo aliquam proin dolor"
                                        textColor: "#000"
                                        image: "file://home/shenoisz/Documents/estudos/QT-creator/importPluginTest/images/" + tabTtile.text + '/' + index + ".jpg"
                                        //image: "https://raw.githubusercontent.com/SHENOISZ/anieplayer/master/screenshots/04.png"
                                    }
                                    spacing: 5
                                }
                            }

                            model: 8
                        }
                        }
                    }
                }
            }
        }
    }
}
