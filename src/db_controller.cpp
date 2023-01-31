// SPDX-FileCopyrightText: 2020 Carl Schwan <carl@carlschwan.eu>
//
// SPDX-License-Identifier: GPL-3.0-or-later

#include "db_controller.h"

#include <QDebug>
#include <QSqlError>
#include <QSqlQuery>
#include <QSqlRecord>
#include <QStandardPaths>

DatabaseHandler::DatabaseHandler(QObject *parent) : QObject(parent)
{
    database.setDatabaseName("QSQLITE");
    database.open();
    databaseQuery = QSqlQuery(database);
}

void DatabaseHandler::addDatabaseEntry(QString queryString)
{
    databaseQuery.exec(queryString);
}






