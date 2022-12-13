#include "Agentslist.h"
#include "qdebug.h"
Databaseclass *pt=pt->getInstance();
Agentslist::Agentslist(QObject *parent)
    : QObject{parent}
{
pt->showagents();
pt->showloanagents();

}

QList<QString> Agentslist::agentnames()
{
qDebug()<<"agents data==="<<pt->getAgents()<<endl;
return pt->getAgents();
}

QList<QString> Agentslist::agentbranches()
{
    return pt->getAgentbranch();
}

QList<QString> Agentslist::loanagentnames()
{
    return pt->getLoanagentname();
}

QList<QString> Agentslist::loanagentbranches()
{
return pt->getLoanagentbranch();
}
