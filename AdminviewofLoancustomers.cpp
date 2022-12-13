#include "AdminviewofLoancustomers.h"
#include "databaseclass.h"
Databaseclass *dbobjectforloancust=dbobjectforloancust->getInstance();
Customers *loancustomer;
AdminviewofLoancustomers::AdminviewofLoancustomers(QObject *parent):QAbstractTableModel(parent)
{
    dbobjectforloancust->adminviewofallLoanCustomers();
}
int AdminviewofLoancustomers::columnCount(const QModelIndex &parent) const
{
    return 7;
}

int AdminviewofLoancustomers::rowCount(const QModelIndex &parent) const
{
    return dbobjectforloancust->getDetailsofallloancustomers().size();
}

QVariant AdminviewofLoancustomers::data(const QModelIndex &index, int role) const
{

    int row=index.row();
    loancustomer= dbobjectforloancust->getDetailsofallloancustomers().at(row);
    //    qDebug()<<"inside the data function";
    switch (role) {
    case 100:return loancustomer->Cname();
        qDebug()<<"inside the adminviewofloan"<<loancustomer->accnumber()<<Qt::endl;
    case 200:return loancustomer->mob_no();
    case 300:return loancustomer->adhar_no();
    case 400:return loancustomer->pan_no();
    case 500:return loancustomer->place();
    case 600:return loancustomer->branch();
    case 700:return loancustomer->agents();
    case 800:return loancustomer->accnumber();
        qDebug()<<"inside the inside the adminviewofloan"<<loancustomer->accnumber()<<Qt::endl;
    }
}

QHash<int, QByteArray> AdminviewofLoancustomers::roleNames() const
{
    qDebug()<<"inside the loan view hash function";
    QHash<int, QByteArray> roles;
    roles[100]="name";
    roles[200]="mobile";
    roles[300]="adhar";
    roles[400]="pan";
    roles[500]="place";
    roles[600]="branch";
    roles[700]="agent";
    roles[800]="accountno";
    return roles;
}

