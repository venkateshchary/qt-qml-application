#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "reciever.h"

int main(int argc, char *argv[])
{

    qputenv("QT_SCALE_FACTOR",QString::number(3).toUtf8());

#if defined(Q_OS_WIN)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    /*
     * creating the object for a class
     */
    Receiver reciever;
    QQmlContext* ctx = engine.rootContext();
    ctx->setContextProperty("receiver", &reciever);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
