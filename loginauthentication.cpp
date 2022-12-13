#include "loginauthentication.h"

LoginAuthentication::LoginAuthentication(QObject *parent) : QObject(parent)
{
    qDebug()<<Q_FUNC_INFO<<endl;
}

int LoginAuthentication::logininformationforPiggy(QString nameofwork, QString loginname, QString loginpassword)
{
   if(nameofwork==work1 && loginname==m_piggyworker_name && loginpassword==m_piggy_password){
       qDebug()<<"piggy worker login sucessfull"<<endl;
   }
       else {
              qDebug()<<" piggy info error in details"<<nameofwork<<loginname<<loginpassword<<endl;
   }
}

int LoginAuthentication::logininformationforLoan(QString nameofwork, QString loginname, QString loginpassword)
{
   if(nameofwork==WORK2 && loginname==m_loanworker_name && loginpassword==m_loan_password){
      qDebug()<<"loan worker login sucessfull"<<endl;
   }
   else {
      qDebug()<<"  loan info error in details"<<endl;
   }
}
