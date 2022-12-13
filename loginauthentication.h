#ifndef LOGINAUTHENTICATION_H
#define LOGINAUTHENTICATION_H

#include <QObject>
#include <QtDebug>
class LoginAuthentication : public QObject
{
    Q_OBJECT
public:
    explicit LoginAuthentication(QObject *parent = nullptr);   

private:
   QString m_piggyworker_name="PIGGYWORKER";
   QString m_piggy_password="PIGGY9901";
   QString m_loanworker_name="LOANWORKER";
   QString m_loan_password="LOAN9901";
   QString work1="PIGY";
   QString WORK2="LOAN";

signals:

public slots:
   int logininformationforPiggy(QString nameofwork,QString loginname,QString loginpassword);
   int logininformationforLoan(QString nameofwork,QString loginname,QString loginpassword);


};

#endif // LOGINAUTHENTICATION_H
