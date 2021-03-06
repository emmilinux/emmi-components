#ifndef CONTEXT_H
#define CONTEXT_H

#include <QObject>
#include <QScreen>
#include <QPoint>
#include <QApplication>


class Context : public QObject
{

    Q_OBJECT

public:
    Q_INVOKABLE int mouseX();
    Q_INVOKABLE int mouseY();

private:
    QScreen *screen = QApplication::screens().at(0);
};

#endif // CONTEXT_H
