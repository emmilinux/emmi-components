#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "context.h"


int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    Context context;

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("Context", &context);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
