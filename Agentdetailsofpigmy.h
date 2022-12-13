#ifndef AGENTDETAILSOFPIGMY_H
#define AGENTDETAILSOFPIGMY_H
#include "databaseclass.h"
#include "Agentclass.h"
#include <QObject>
#include <QAbstractTableModel>
class Agentdetailsofpigmy : public QAbstractTableModel
{
    Q_OBJECT
public:
    explicit Agentdetailsofpigmy(QObject *parent = nullptr);
    int columnCount(const QModelIndex &parent)const override;
    int rowCount(const QModelIndex &parent)const override;
    QVariant data(const QModelIndex &index,int role)const override;
    virtual QHash<int,QByteArray>roleNames() const override;

signals:

};

#endif // AGENTDETAILSOFPIGMY_H
