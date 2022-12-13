#include "Datareceivedfromqml.h"
#include<QDebug>
#include "databaseclass.h"
Databaseclass *Databaseclass::instance = 0;
Databaseclass *dbc=dbc->getInstance();
Datareceivedfromqml::Datareceivedfromqml(QObject *parent) : QObject(parent)
{
    dbc->createDatabase();
    dbc->createCustomerTable();
    dbc->createLoanCustomerTable();
    dbc->sampletablecreate();
    dbc->AdminAuthenticationdetailsTable();
    dbc->agentaddingdetails();
    dbc->loanagenttable();
    qDebug()<<Q_FUNC_INFO<<"data receiver class condtructor"<<endl;
}

int Datareceivedfromqml::getInterestSendToqml() const
{
    return interestSendToqml;
}

void Datareceivedfromqml::setInterestSendToqml(int value)
{
    interestSendToqml = value;
}

void Datareceivedfromqml::validationdetailsfromagent(QString works, QString name, QString password)
{

    dbc->inserintosampletable(works,name,password);
    //qDebug()<<"***********************************";
}

bool Datareceivedfromqml::adminNameAndPasswordchngeids(QString adminoldname, QString adminoldpassword, QString adminnewname, QString adminnewpassword)
{
    int admindetails=dbc->insertdataintotheadmintable(adminoldname,adminoldpassword,adminnewname,adminnewpassword);
    return admindetails;
}

void Datareceivedfromqml::agentaddingdetails(Agentclass *ptr)
{
    dbc->insertagentdetails(ptr );
}

void Datareceivedfromqml::loanagentaddingdetails(Agentclass *ptrr)
{
    dbc->insertloanagents(ptrr);
}

bool Datareceivedfromqml::pigmyAgentChangepassword(QString name, QString oldpassword,QString newpassword)
{
    int pigmyagentchangepassword;
    pigmyagentchangepassword=dbc->changepasswordofpigmyagent(name,oldpassword,newpassword);
    return pigmyagentchangepassword;
}

bool Datareceivedfromqml::loanAgentChangepassword(QString name, QString oldpassword,QString newpassword)
{
    int loanagentchangepassword;
    loanagentchangepassword=dbc->changePasswordofLoanagent(name,oldpassword,newpassword);
    return loanagentchangepassword;
}

void Datareceivedfromqml::customerDetailss(Customers *ptr)
{
    qDebug()<<"*********name="<<ptr->Cname();
    qDebug()<<"mobile="<<ptr->mob_no();
    qDebug()<<"adha="<<ptr->adhar_no();
    qDebug()<<"pan="<<ptr->pan_no();
    qDebug()<<"place="<<ptr->place();
    dbc->insertCustomer(ptr);                            //addcustomerDetails(ptr,branch,agent);
}

void Datareceivedfromqml::loanCustomerDetails(Customers *ptr)
{
    qDebug()<<"loan user name="<<ptr->Cname();
    qDebug()<<" loan mobile="<<ptr->mob_no();
    qDebug()<<"loan adha="<<ptr->adhar_no();
    qDebug()<<"loan pan="<<ptr->pan_no();
    qDebug()<<"loan place="<<ptr->place();
    qDebug()<<"loan DATEEEEEEEEEEEEEEEEEEE**="<<ptr->datse();
    dbc->insertLoancustomers(ptr);
}

void Datareceivedfromqml::depositedtls(Customers *ptr)
{
    qDebug()<<"deposite+++++++++="<<ptr->accnumber()<<ptr->deposite()<<ptr->datse();
    if(ptr->deposite()>=0)
        totalcalculatedPiggyamount=ptr->deposite()+(ptr->deposite()*(ptr->piggy_interest()/100));
    else
        totalcalculatedPiggyamount=ptr->deposite();
    ptr->setTotal_piggydeposite_amount(totalcalculatedPiggyamount);
    dbc->amountinsert(ptr);
}

void Datareceivedfromqml::withdrawDetails(Customers *ptr)
{
    qDebug()<<"withdrawamounttt+++++++++="<<ptr->debit()<<Qt::endl;

    dbc->customer_withdrawamount(ptr);
}

void Datareceivedfromqml::interestCalculation(Customers *ptr)
{
    claculatedloaninterest  =(((ptr->loanamount()*ptr->loaninterest())/100)+ptr->loaninterestreceive()) ;
    qDebug()<<"interest=****"<<claculatedloaninterest<<Qt::endl;
    ptr->setCalculated_interestof_loan(claculatedloaninterest);
    setInterestSendToqml(claculatedloaninterest);
    emit sendtoqmlChanged();
    dbc->insertdetailsintoloanaccounts(ptr);
    qDebug()<<"loan DATEEEEEEEEEEEEEEEEEEE**="<<ptr->datse();
}
