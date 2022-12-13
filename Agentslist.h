#ifndef AGENTSLIST_H
#define AGENTSLIST_H
#include "databaseclass.h"
#include <QObject>

class Agentslist : public QObject
{
    Q_OBJECT
public:
    explicit Agentslist(QObject *parent = nullptr);
public slots:
    QList<QString>agentnames();
    QList<QString>agentbranches();
    QList<QString>loanagentnames();
    QList<QString>loanagentbranches();

signals:

};

#endif // AGENTSLIST_H
