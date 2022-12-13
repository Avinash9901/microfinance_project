#include "AgentDetailsOfLoan.h"
Databaseclass *dbobject=dbobject->getInstance();
Agentclass *loanagent;
AgentDetailsOfLoan::AgentDetailsOfLoan(QObject *parent)
    : QAbstractTableModel(parent)
{

}

int AgentDetailsOfLoan::columnCount(const QModelIndex &parent) const
{
    return 4;
}

int AgentDetailsOfLoan::rowCount(const QModelIndex &parent) const
{
    return dbobject->getTotalloanAgentdetails().size();
}

QVariant AgentDetailsOfLoan::data(const QModelIndex &index, int role) const
{
    int row=index.row();
    loanagent=dbobject->getTotalloanAgentdetails().at(row);
    switch(role){
    case 1:return loanagent->getAgentwork();
    case 2:return loanagent->getAgentname();
    case 3:return loanagent->getAgent_mobno();
    case 4:return loanagent->getAgent_branch();

    }
}

QHash<int, QByteArray> AgentDetailsOfLoan::roleNames() const
{
    QHash<int,QByteArray>roles;
    roles[1]="loanagentwork";
    roles[2]="loanagentname";
    roles[3]="loanagentmobno";
    roles[4]="loanagentbranch";
    return roles;
}
