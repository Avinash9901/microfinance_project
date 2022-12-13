#include "loancustomerdetailsview.h"
Databaseclass *ptr5=ptr5->getInstance();
Customers *s4;
Loancustomerdetailsview::Loancustomerdetailsview(QObject *parent):QAbstractTableModel(parent)
{
    //ptr5->showloancustomerdetails();

}

int Loancustomerdetailsview::columnCount(const QModelIndex &parent) const
{
    return 8;
}

int Loancustomerdetailsview::rowCount(const QModelIndex &parent) const
{
    return ptr5->getLoandtls().size();
}

QVariant Loancustomerdetailsview::data(const QModelIndex &index, int role) const
{

    int row=index.row();
    s4= ptr5->getLoandtls().at(row);
    //    qDebug()<<"inside the data function";
    switch (role) {
    case 100:return s4->Cname();
        qDebug()<<"inside loan customers--"<<s4->Cname()<<Qt::endl;
        qDebug()<<"inside the reportttttttttttttttttttt"<<s4->accnumber()<<Qt::endl;
    case 200:return s4->mob_no();
    case 300:return s4->adhar_no();
    case 400:return s4->pan_no();

    case 500:return s4->place();
    case 600:return s4->branch();
    case 700:return s4->agents();
    case 800:return s4->accnumber();
        qDebug()<<"inside the reportttttttttttttttttttt"<<s4->accnumber()<<Qt::endl;
    }
}

QHash<int, QByteArray> Loancustomerdetailsview::roleNames() const
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

int Loancustomerdetailsview::loanCustomervalidation( int loan_accountnumber)
{
    QSqlQuery qry;
    bool sucess;
    qry.prepare("select * from LOAN_CUSTOMERS");
    sucess=qry.exec();
    if(sucess){
        while (qry.next()) {
            if(qry.value(7).toInt()==loan_accountnumber){
                emit loanuserChanged();
                setLoanuser_accountnumber(loan_accountnumber);
                emit loanuseraccountChanged();
                qDebug()<<"Login sucessfull"<<Qt::endl;
                //                s2->setaccnumber(accountnumber);
                ptr5->setAccountNoOfloancustomer(loan_accountnumber);
                //                ptr->viewTransaction();

                return 1;
            }else {
                qDebug()<<"inside the else loopl"<<Qt::endl;
                qDebug()<<"************login failed"<<qry.value(0).toString()<<Qt::endl;
            }
        }
        return 0;
    }else {
        qDebug()<<"qry failedddd"<<Qt::endl;
        return 0;

    }
}

int Loancustomerdetailsview::loanuser_accountnumber() const
{
    return m_loanuser_accountnumber;
}

void Loancustomerdetailsview::setLoanuser_accountnumber(int loanuser_accountnumber)
{
    m_loanuser_accountnumber = loanuser_accountnumber;
}
QString Loancustomerdetailsview::loanusername() const
{
    return m_loanusername;
}

void Loancustomerdetailsview::setLoanusername(const QString &loanusername)
{
    m_loanusername = loanusername;
}

QString Loancustomerdetailsview::readloaninterest()
{
    QSqlQuery tr;
    QString acnotra = "SELECT calculated_interest from loancustomer"+ptr5->getAccountNoOfloancustomer() ;//QString::number(account_number+1);
    qDebug()<<"acnotra------------*"<<acnotra<<Qt::endl;
    tr.exec(acnotra);
    //    int tracount=0;
    QString res;
    while (tr.next()) {
        res = tr.value(0).toString();
        //        tr.value(0).toInt();
        qDebug()<<"curRENT INTEREST------------***"<< res/*.toInt()*/<<Qt::endl;
        qDebug()<<"curRENT INTEREST------------***"<< "SELECT recovered_interest from loancustomer"+ptr5->getAccountNoOfloancustomer()<<Qt::endl;
    }
    qDebug()<<"avvvvvvvvvv"<<Qt::endl;
    return res;

}

QList<QVariant> Loancustomerdetailsview::loancustomerAccount_numbers()
{
    return ptr5->getLoancustomeraccount_number();
}

void Loancustomerdetailsview::loancustomeracnumber(QString acount_no)
{
    ptr5->loancustacnumber(acount_no);
}

