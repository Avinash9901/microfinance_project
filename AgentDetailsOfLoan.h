#ifndef AGENTDETAILSOFLOAN_H
#define AGENTDETAILSOFLOAN_H
#include <QAbstractTableModel>
#include <QObject>
#include "databaseclass.h"
#include "Agentclass.h"
class AgentDetailsOfLoan:public QAbstractTableModel
{

    Q_OBJECT
public:
    explicit AgentDetailsOfLoan(QObject *parent = nullptr);
    int columnCount(const QModelIndex &parent)const override;
    int rowCount(const QModelIndex &parent)const override;
    QVariant data(const QModelIndex &index,int role)const override;
    virtual QHash<int,QByteArray>roleNames() const override;

signals:
};

#endif // AGENTDETAILSOFLOAN_H
