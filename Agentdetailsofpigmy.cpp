#include "Agentdetailsofpigmy.h"
//#include "databaseclass.h"
Databaseclass *dbobj=dbobj->getInstance();
Agentclass *agentsss;
Agentdetailsofpigmy::Agentdetailsofpigmy(QObject *parent)
    : QAbstractTableModel(parent)
{

}

int Agentdetailsofpigmy::columnCount(const QModelIndex &parent) const
{
return 5;
}

int Agentdetailsofpigmy::rowCount(const QModelIndex &parent) const
{
return dbobj->getTotalPigmyagentdetails().size();
}

QVariant Agentdetailsofpigmy::data(const QModelIndex &index, int role) const
{
int row=index.row();
agentsss=dbobj->getTotalPigmyagentdetails().at(row);
switch (role) {
case 1:return agentsss->getAgentwork();
case 2:return agentsss->getAgentname();
case 3:return agentsss->getAgent_mobno();
case 4:return agentsss->getAgent_branch();
case 5:return agentsss->getAgent_password();
}

}

QHash<int, QByteArray> Agentdetailsofpigmy::roleNames() const
{
 QHash<int,QByteArray> roles;
 roles[1]="agentwork";
 roles[2]="agentname";
 roles[3]="mobilenumber";
 roles[4]="branch";
 roles[5]="agentpassword";
 return roles;
}
