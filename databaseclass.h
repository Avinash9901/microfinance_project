#ifndef DATABASECLASS_H
#define DATABASECLASS_H
//#include<QtSql/QSqlDatabase>
#include<qsql.h>
#include <QSqlDatabase>
#include <QSqlQuery>
//#include "branch.h"
#include <QObject>
#include "customers.h"
#include "Agentclass.h"
#include<QtCore/QCoreApplication>
#include <QVariant>

//#include "report.h"
//#include "viewtransaction.h"
class Databaseclass : public QObject
{
    Q_OBJECT
private:
    explicit Databaseclass(QObject *parent = nullptr);
    //  QList<QStringList> finallist;
    static Databaseclass *instance;
    QSqlDatabase db;
    QSqlQuery qryy;
    QString acnostr;
    QString acnostr2;
    QList<Customers*>dtls;
    QList<Customers*>dtlsofallcustomers;
    QList<Customers*>loandtls;
    QList<Customers*>detailsofallloancustomers;
    QList<Customers *>transactionlist;
    QList<QString>agents;
    QList<QString>agentbranch;
    QList<QString>loanagentname;
    QList<QString>loanagentbranch;
    int account_number=1000;
    int account_numberofloancustomer=700000;
    QString accountNoOfloancustomer;
    long long int acc_iter=0;
    int claculatedloaninterest;
    int interestrecover;
    QList<Customers*>loantransactionlist;
    QList<Agentclass*>totalPigmyagentdetails;
    QList<Agentclass *>totalloanAgentdetails;
    QString selectagentname;
    QString selectloanagentname;
    QList<QVariant>pigmycustomername;
    QList<QVariant>loancustomeraccount_number;
    QString selectpigmycudtomername;
    QString selectloancustomeraccountnumber;

    //float currbal=0;
protected:
    void loancustomersaccountnumbersfromqmlside(QString accountnumbers);
public:
    static Databaseclass *getInstance() {
        if (!instance)
            instance = new Databaseclass;
        return instance;
    }
    float currbal=0;
    QList<QString> list;
    void getinformation();
    void createDatabase();
    void createCustomerTable();
    void createLoanCustomerTable();
    void insertCustomer(Customers *ptr3);
    void insertLoancustomers(Customers *ptr);
    void showdetails();
    void adminviewallcustomerdetailsofpigmyagents();

    void showloancustomerdetails();
    void amountinsert(Customers *ptr4);
    void insertdetailsintoloanaccounts(Customers *ptr5);
    void customer_withdrawamount(Customers *ptr5);
    void transactiondetails(Customers *ptr7);
    void viewTransaction();
    void viewLoanTransaction();
    bool piggyworkervalidation(QString works, QString piggyname, QString piggypassword);
    bool loanworkervalidation(QString works2, QString loanname, QString loanpassword);
    void sampletablecreate();
    void inserintosampletable(QString works,QString name,QString password);
    void AdminAuthenticationdetailsTable();
    bool insertdataintotheadmintable(QString adminname, QString adminpassword, QString adminnewname, QString adminnewpassword);
    bool Adminloginvalidation(QString adminname,QString admin_password);
    void agentaddingdetails();
    void loanagenttable();
    void insertagentdetails(Agentclass *ptr);
    void insertloanagents(Agentclass *ptr );
    void showagents();
    void showloanagents();
    // bool pigmyagentChangePassword(QString workname, QString name, QString oldpassword, QString newpassword);
    bool changepasswordofpigmyagent(QString name, QString password, QString newpassword);
    bool changePasswordofLoanagent(QString name,QString password,QString newpassword);
    void insertintoadminlogintable();
    void pigmycustomernamefromqml(QString name);
    void loancustacnumber(QString acnumber);
    bool checkAdminCredientialsChangedorNot();

    //bool loanagentChangePassword(QString workname, QString name, QString oldpassword, QString newpassword);
    //void insertcalculated_interest(Customers *ptr5);
    // QList<QString>readbalance(Customers *ptr4);
    // void insertdepositeamount(Customers *ptr3);

    QList<QStringList> getFinallist();// const;
    QList<Customers *> getDtls() const;

    int getAccount_number() const;
    void setAccount_number(int value);

    int accountread();

    QString getAcnostr() const;
    void setAcnostr(const int &value);

    QList<Customers *> getTransactionlist() const;
    void setTransactionlist(const QList<Customers *> &value);

    int getAccount_numberofloancustomer() const;
    void setAccount_numberofloancustomer(const int &value);

    QList<Customers *> getLoandtls() const;
    void setLoandtls(const QList<Customers *> &value);

    QString getAccountNoOfloancustomer() const;
    void setAccountNoOfloancustomer(const int &valuee);

    int getInterestrecover() const;
    void setInterestrecover(int value);

    QList<Customers *> getLoantransactionlist() const;
    void setLoantransactionlist(const QList<Customers *> &value);

    const QList<QString> &getAgents() const;
    void setAgents(const QList<QString> &newAgents);

    const QList<QString> &getAgentbranch() const;
    void setAgentbranch(const QList<QString> &newAgentbranch);

    const QList<QString> &getLoanagentname() const;
    void setLoanagentname(const QList<QString> &newLoanagentname);

    const QList<QString> &getLoanagentbranch() const;
    void setLoanagentbranch(const QList<QString> &newLoanagentbranch);

    const QList<Agentclass *> &getTotalPigmyagentdetails() const;
    void setTotalPigmyagentdetails(const QList<Agentclass *> &newTotalPigmyagentdetails);

    const QList<Agentclass *> &getTotalloanAgentdetails() const;
    void setTotalloanAgentdetails(const QList<Agentclass *> &newTotalloanAgentdetails);

    const QString &getSelectagentname() const;
    void setSelectagentname(const QString &newSelectagentname);

    const QString &getSelectloanagentname() const;
    void setSelectloanagentname(const QString &newSelectloanagentname);



    const QList<Customers *> &getDtlsofallcustomers() const;
    void setDtlsofallcustomers(const QList<Customers *> &newDtlsofallcustomers);

    const QList<Customers *> &getDetailsofallloancustomers() const;
    void setDetailsofallloancustomers(const QList<Customers *> &newDetailsofallloancustomers);
public:
    void adminviewofallLoanCustomers();
    const QList<QVariant> &getPigmycustomername() const;
    void setPigmycustomername(const QList<QVariant> &newPigmycustomername);

    const QString &getSelectpigmycudtomername() const;
    void setSelectpigmycudtomername(const QString &newSelectpigmycudtomername);

    //    const QList<QVariant> &getLoancustomeraccount_number() const;
    //    void setLoancustomeraccount_number(const QList<QVariant> &newLoancustomeraccount_number);

    const QList<QVariant> &getLoancustomeraccount_number() const;
    void setLoancustomeraccount_number(const QList<QVariant> &newLoancustomeraccount_number);

    const QString &getSelectloancustomeraccountnumber() const;
    void setSelectloancustomeraccountnumber(const QString &newSelectloancustomeraccountnumber);

signals:

};

#endif // DATABASECLASS_H
