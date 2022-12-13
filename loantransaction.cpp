#include "loantransaction.h"
#include<QDebug>
Databaseclass *ptrr=ptrr->getInstance();
Customers *useforviewtransaction;
Loantransaction::Loantransaction(QObject *parent) : QAbstractTableModel(parent)
{
    ptrr->viewLoanTransaction();
    qDebug()<<"INSIDE THE CONSTRUCTOR"<<Qt::endl;
}

int Loantransaction::columnCount(const QModelIndex &parent) const
{
    return 4;
}

int Loantransaction::rowCount(const QModelIndex &parent) const
{
    return ptrr->getLoantransactionlist().size();
}

QVariant Loantransaction::data(const QModelIndex &index, int role) const
{
    int row=index.row();
    qDebug()<<"rowwwwwwwwwww IN LONEE"<<index.row()<<Qt::endl;
    useforviewtransaction=ptrr->getLoantransactionlist().at(row);
    qDebug()<<"inside loan 2222 debufg"<<ptrr->getLoantransactionlist().at(row)<<Qt::endl;
    switch (role) {
    case 100:qDebug()<<"INSIDE  LOAN TRANS*&*&*&"<< useforviewtransaction->loanamount()<<Qt::endl; return useforviewtransaction->loanamount();
    case 200: return  useforviewtransaction->datse();
    case 300:return useforviewtransaction->loaninterest();
    case 400:return useforviewtransaction->loaninterestreceive();
    case 500:return useforviewtransaction->principalreceive();
    }

}

QHash<int, QByteArray> Loantransaction::roleNames() const
{
    QHash<int , QByteArray> roles;
    roles[100]="loanamount";
    roles[200]="lonesanctioneddate";
    roles[300]="lonerate";
    roles[400]="recoverinterest";
    roles[500]="recoverprincipal";
    return  roles;
}
