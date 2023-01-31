#pragma once

#include <QObject>

class todaystasks : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString ttname READ getTtname WRITE setTtname NOTIFY ttnameChanged)


public:
    explicit todaystasks(QObject *parent = nullptr);
    QString getTtname();
    void setTtname(QString &newTtname);

signals:
    void ttnameChanged();

private:
    QString ttname = "AMG";



};
