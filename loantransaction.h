#ifndef LOANTRANSACTION_H
#define LOANTRANSACTION_H
#include <QAbstractTableModel>
#include <QObject>
#include<databaseclass.h>

class Loantransaction : public QAbstractTableModel
{
    Q_OBJECT
public:
    explicit Loantransaction(QObject *parent = nullptr);

    int columnCount(const QModelIndex &parent) const override;
    int rowCount(const QModelIndex &parent) const override;
    QVariant data(const QModelIndex &index,int role)const override;
    virtual QHash<int, QByteArray> roleNames() const override ;

signals:

};

#endif // LOANTRANSACTION_H
