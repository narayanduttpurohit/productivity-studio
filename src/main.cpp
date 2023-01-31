//Deafault Includes
#include <QApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include <QUrl>
#include <KLocalizedContext>
#include <KLocalizedString>
#include <QDebug>

//Database
#include <QSqlDatabase>
#include <QSqlError>

//User Generated Header Files
#include "db_controller.h"
#include "todaystasks.h"


const QString DRIVER(QStringLiteral("QSQLITE"));

int main(int argc, char *argv[])
{
    QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QApplication app(argc, argv);
    KLocalizedString::setApplicationDomain("helloworld");
    QCoreApplication::setOrganizationName(QStringLiteral("KDE"));
    QCoreApplication::setOrganizationDomain(QStringLiteral("kde.org"));
    QCoreApplication::setApplicationName(QStringLiteral("Hello World"));

    //Database CODE-START

    QSqlDatabase db = QSqlDatabase::addDatabase(DRIVER);
    const auto path = QDir::cleanPath(QStandardPaths::writableLocation(QStandardPaths::AppLocalDataLocation) + QStringLiteral("/") + qApp->applicationName());
    db.setDatabaseName("QSQLITE");

    //Database CODE-END

    QQmlApplicationEngine engine;
    qmlRegisterType<todaystasks>("org.kde.example", 1, 0, "TTBackend");
    DatabaseHandler ColorStore;
    qmlRegisterType<DatabaseHandler>("org.kde.exampledata", 1, 0, "ColorStore");



    engine.rootContext()->setContextObject(new KLocalizedContext(&engine));
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    if (engine.rootObjects().isEmpty()) {
        return -1;
    }

    return app.exec();
}
