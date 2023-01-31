#include "todaystasks.h"

todaystasks::todaystasks(QObject *parent)
    : QObject(parent)
{


}

QString todaystasks::getTtname()
{
    return ttname;
}

void todaystasks::setTtname(QString &newTtname)
{
    if (ttname == newTtname)
        return;
    ttname = newTtname;
    emit ttnameChanged();
}
