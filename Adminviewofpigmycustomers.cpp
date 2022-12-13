#include "Adminviewofpigmycustomers.h"
Databaseclass *ptr6=ptr6->getInstance();
Customers *s5;
Adminviewofpigmycustomers::Adminviewofpigmycustomers(QObject *parent):QAbstractTableModel(parent)
{
    ptr6->adminviewallcustomerdetailsofpigmyagents();
}
int Adminviewofpigmycustomers::columnCount(const QModelIndex &parent) const
{
    return 7;
}

int Adminviewofpigmycustomers::rowCount(const QModelIndex &parent) const
{
    return ptr6->getDtlsofallcustomers().size();
}

QVariant Adminviewofpigmycustomers::data(const QModelIndex &index, int role) const
{

    int row=index.row();
    s5= ptr6->getDtlsofallcustomers().at(row);
    //    qDebug()<<"inside the data function";
    switch (role) {
    case 100:return s5->Cname();
        qDebug()<<"inside the reportttttttttttttttttttt"<<s5->accnumber()<<Qt::endl;
    case 200:return s5->mob_no();
    case 300:return s5->adhar_no();
    case 400:return s5->pan_no();
    case 500:return s5->place();
    case 600:return s5->branch();
    case 700:return s5->agents();
    case 800:return s5->accnumber();
        qDebug()<<"inside the reportttttttttttttttttttt"<<s5->accnumber()<<Qt::endl;
    }
}

QHash<int, QByteArray> Adminviewofpigmycustomers::roleNames() const
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

