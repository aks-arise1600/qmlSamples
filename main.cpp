#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QApplication>
#include <QIcon>

int main(int argc, char *argv[])
{
//    QGuiApplication app(argc, argv);

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QApplication app(argc, argv);
    app.setWindowIcon(QIcon(":/images/user-experience.png"));

    QQmlApplicationEngine engine;

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
//            swipe_view.currentIndex: 0
