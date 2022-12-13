#include "report.h"
#include<QDebug>
#include <QSqlError>
Databaseclass *ptr = ptr->getInstance();
Customers *s2;
//int balance=s2->accnumber();
//Customers *ptrr;//= new Customers;
Report::Report(QObject *parent) : QAbstractTableModel(parent)
{
    qDebug()<<"shows sucessfully in report0000\n"<<Qt::endl;
    qDebug()<<Q_FUNC_INFO<<"inside report class constructor"<<endl;
    setCopyofpigmycustacnumbers(ptr->getPigmycustomername());
    copyofpigmycustacnumbers2=ptr->getPigmycustomername();
}

int Report::rowCount(const QModelIndex &parent) const
{
    return ptr->getDtls().size();
}

int Report::columnCount(const QModelIndex &parent) const
{
    return 8;
}


QVariant Report::data(const QModelIndex &index, int role) const
{
    int row=index.row();
    s2= ptr->getDtls().at(row);
    //    qDebug()<<"inside the data function";
    switch (role) {
    case 10:return s2->Cname();
        qDebug()<<"LOAN C NAME IN *&*&*&"<<s2->Cname()<<Qt::endl;
    case 20:
        return s2->mob_no();
    case 30:return s2->adhar_no();
    case 40:return s2->pan_no();
    case 50:return s2->place();
    case 60:return s2->branch();
    case 70:return s2->agents();
    case 80:return s2->accnumber();
        qDebug()<<"inside the reportttttttttttttttttttt"<<s2->accnumber()<<Qt::endl;
    }

}

QHash<int, QByteArray> Report::roleNames() const
{
    qDebug()<<"inside the hash function";
    QHash<int, QByteArray> roles;
    roles[10]="name";
    roles[20]="mobile";
    roles[30]="adhar";
    roles[40]="pan";
    roles[50]="place";
    roles[60]="branch";
    roles[70]="agent";
    roles[80]="accountno";
    return roles;
}

int Report::validationOfCustomer(int accountnumber)
{

    QSqlQuery qry;
    bool sucess;
    qry.prepare("select * from CUSTOMERSS");
    sucess=qry.exec();
    if(sucess){
        while (qry.next()) {
            if(qry.value(7).toInt()==accountnumber){
                // setUsername(name);
                emit usernameChanged();
                setUseraccount(accountnumber);
                emit useraccountChanged();
                qDebug()<<"Login sucessfull"<<Qt::endl;
                //                s2->setaccnumber(accountnumber);
                ptr->setAcnostr(accountnumber);
                //                ptr->viewTransaction();

                return 1;
            }else {
                qDebug()<<"inside the else loopl"<<Qt::endl;
                qDebug()<<"*********************"<<qry.value(0).toString()<<Qt::endl;
                //               continue;
            }
        }
        return 0;
    }else {
        qDebug()<<"qry failedddd"<<Qt::endl;
        return 0;

    }
}

float Report::readbalance()
{

    QSqlQuery tr;
    QString acnotra = "SELECT total_piggyamount from a"+ptr->getAcnostr();//QString::number(account_number+1);
    qDebug()<<"acnotra------------*"<<acnotra<<Qt::endl;
    tr.exec(acnotra);
    //    int tracount=0;
    ptr->currbal=0;
    while (tr.next()) {
        ptr-> currbal=ptr->currbal+tr.value(0).toFloat();
        qDebug()<<"currballl------------***"<<ptr->currbal<<Qt::endl;
    }
    return ptr->currbal;
}

bool Report::validationofPiggyworker(QString works, QString piggyname, QString piggypassword)
{
    int ans = ptr->piggyworkervalidation(works,piggyname,piggypassword);
    setPigmypasswordsendtoqml(piggypassword);
    return ans;
}

int Report::validationofLoanyworker(QString works2, QString loanname, QString loanpassword)
{
    int result=ptr->loanworkervalidation(works2,loanname,loanpassword);
    setLoanagentpassword(loanpassword);
    return result;
}


int Report::adminloginvalidation(QString name, QString password)
{
    int result=ptr->Adminloginvalidation(name,password);
    return result;
}

void Report::pigmynamefromqml(QString pigmycust_name)
{
    ptr->pigmycustomernamefromqml(pigmycust_name);
}

QString Report::mypigmypassword()
{
    return getPigmypasswordsendtoqml();
}

QString Report::loanpasswordsendtoqmlside()
{
    return getLoanagentpassword();
}

QList<QVariant> Report::copyypigmycustomernames(QString acnumber)
{
    qDebug()<<"inside copypigmynamessss"<<copyofpigmycustacnumbers2.size()<<endl;

    for(int i=0;i<copyofpigmycustacnumbers2.size();i++){
        qDebug()<<"inside copypigmynamessss22222"<<endl;
        QVariant v = copyofpigmycustacnumbers2.at(i);

        if(v==acnumber)
        {
            copyofpigmycustacnumbers2.clear();
            copyofpigmycustacnumbers2.append(v);
            qDebug()<<"inside copypigmynamessss33333"<<endl;
            return copyofpigmycustacnumbers2;

        }
    }
}

bool Report::checkAdminCredentialschanged()
{
    int checkresult=ptr->checkAdminCredientialsChangedorNot();
    return checkresult;
}

QList<QVariant> &Report::getCopyofpigmycustacnumbers()
{
    return copyofpigmycustacnumbers;
}

void Report::setCopyofpigmycustacnumbers( QList<QVariant> newCopyofpigmycustacnumbers)
{
    copyofpigmycustacnumbers = newCopyofpigmycustacnumbers;
}

const QString &Report::getLoanagentpassword() const
{
    return loanagentpassword;
}

void Report::setLoanagentpassword(const QString &newLoanagentpassword)
{
    loanagentpassword = newLoanagentpassword;
}



const QString &Report::getPigmypasswordsendtoqml() const
{
    return pigmypasswordsendtoqml;
}

void Report::setPigmypasswordsendtoqml(const QString &newPigmypasswordsendtoqml)
{
    pigmypasswordsendtoqml = newPigmypasswordsendtoqml;
}

QString Report::loanusernamestore() const
{
    return m_loanusernamestore;
}

void Report::setLoanusernamestore(const QString &loanusernamestore)
{
    m_loanusernamestore = loanusernamestore;
}

QList<QVariant> Report::pigmycustomernames()
{
    return ptr->getPigmycustomername();
}

int Report::loanuseracnumberstore() const
{
    return m_loanuseracnumberstore;
}

void Report::setLoanuseracnumberstore(int loanuseracnumberstore)
{
    m_loanuseracnumberstore=loanuseracnumberstore;
}



int Report::useraccount() const
{
    return m_useraccount;
}

void Report::setUseraccount(int useraccount)
{
    m_useraccount = useraccount;
}



QString Report::username() const
{
    return m_username;
}

void Report::setUsername(const QString &username)
{
    m_username = username;
}


