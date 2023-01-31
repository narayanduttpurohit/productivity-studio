#pragma once

#include "qsqlquery.h"
#include <QSqlDatabase>
#include <QSqlTableModel>


/**
 * @brief Store all the user's team names
 */
class DatabaseHandler : public QObject
{
    Q_OBJECT
    Q_INVOKABLE void addDatabaseEntry(QString queryString);


public:
    explicit DatabaseHandler(QObject *parent = nullptr);
    QSqlQuery getDatabaseQuery() const;
    void setDatabaseQuery(const QSqlQuery &newDatabaseQuery);

signals:
    void databaseQueryChanged();

private:
    QSqlDatabase database = QSqlDatabase::addDatabase("QSQLITE", "mkddb");
    QSqlQuery databaseQuery;
    QString queryString;

};
