#include "viewtransaction.h"
#include <QDebug>
Databaseclass *ptr1 = ptr1->getInstance();
Customers *s3;
Viewtransaction::Viewtransaction(QObject *parent) : QAbstractTableModel(parent)
{
    ptr1->viewTransaction();
    qDebug()<<Q_FUNC_INFO<<"viewtransaction  constructor"<<endl;
}

int Viewtransaction::columnCount(const QModelIndex &parent) const
{
    return  3;
}

int Viewtransaction::rowCount(const QModelIndex &parent) const
{
    return  ptr1->getTransactionlist().size() ;
}

QVariant Viewtransaction::data(const QModelIndex &index, int role) const
{
    int row=index.row();
    qDebug()<<"rowwwwwwwwwwwwwwwwwwwwwwwwwwwwww"<<index.row()<<Qt::endl;
    s3=ptr1->getTransactionlist().at(row);
    qDebug()<<"ro3333333333333333333333333333"<<ptr1->getTransactionlist().at(row)<<Qt::endl;
    switch (role) {
    case 1:qDebug()<<"000000000000000000000000"<<s3->transaction()<<Qt::endl;return s3->transaction();
    case 2:qDebug()<<"000000000000000000000000"<<s3->datse()<<Qt::endl;return s3->datse();
    case 3:return s3->piggy_interest();
    case 4:return s3->getTotal_piggydeposite_amount();
    case 5:qDebug()<<"000000000000000000000000"<<s3->balance()<<Qt::endl;return  s3->balance();
        qDebug()<<"inside the transaction"<<s3->transaction()<<s3->datse()<<s3->balance()<<Qt::endl;
    }
}

QHash<int, QByteArray> Viewtransaction::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[1]="trans";
    roles[2]="dateee";
    roles[3]="interest";
    roles[4]="withinterestamount";
    roles[5]="balance";
    return  roles;
}



