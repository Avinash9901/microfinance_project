#ifndef VIEWTRANSACTION_H
#define VIEWTRANSACTION_H

#include <QObject>
#include <QAbstractTableModel>
#include "databaseclass.h"
class Viewtransaction : public QAbstractTableModel
{
    Q_OBJECT
public:
    explicit Viewtransaction(QObject *parent = nullptr);

    int columnCount(const QModelIndex &parent) const override;
    int rowCount(const QModelIndex &parent) const override;
    QVariant data(const QModelIndex &index,int role)const override;
    virtual QHash<int, QByteArray> roleNames() const override ;

signals:

};

#endif // VIEWTRANSACTION_H
