#ifndef REPORT_H
#define REPORT_H
#include "databaseclass.h"
#include <QObject>
#include <QAbstractTableModel>

class Report : public QAbstractTableModel
{
    Q_OBJECT
public:
    explicit Report(QObject *parent = nullptr);
    int columnCount(const QModelIndex &parent) const override;
    int rowCount(const QModelIndex &parent) const override;
    QVariant data(const QModelIndex &index,int role)const override;

    virtual QHash<int, QByteArray> roleNames() const override ;


    QList<QVariant>copyofpigmycustacnumbers2;

    const QString &getPigmypasswordsendtoqml() const;
    void setPigmypasswordsendtoqml(const QString &newPigmypasswordsendtoqml);

    const QString &getLoanagentpassword() const;
    void setLoanagentpassword(const QString &newLoanagentpassword);

    QList<QVariant> &getCopyofpigmycustacnumbers() ;
    void setCopyofpigmycustacnumbers( QList<QVariant> newCopyofpigmycustacnumbers);

private:
    // QList<Customers*>custdetails;
    // Customers *c1;

signals:
    void usernameChanged();
    void useraccountChanged();
    void detailssentChanged();
    void setpasswordofpigmyagentChanged();
public slots:
    // /*QStringList*/void showdetailss();
    QString loanusernamestore() const;
    void setLoanusernamestore(const QString &loanusernamestore);
    QList<QVariant> pigmycustomernames();
    int loanuseracnumberstore() const;
    void setLoanuseracnumberstore(int loanuseracnumberstore);
    QString username() const;
    void setUsername(const QString &username);
    int useraccount() const;
    void setUseraccount(int useraccount);
    int validationOfCustomer(int accountnumber);
    //int loanCustomervalidation(QString loan_customer,int loan_accountnumber);
    float readbalance();
    bool validationofPiggyworker(QString works,QString piggyname,QString piggypassword);
    int validationofLoanyworker(QString works2,QString loanname,QString loanpassword);
    //int loanandpiggydatareceiver(QString works,QString name,QString password);
    int adminloginvalidation(QString name,QString password);
    void pigmynamefromqml(QString pigmycust_name);
    QString mypigmypassword();
    QString loanpasswordsendtoqmlside();
    QList<QVariant>copyypigmycustomernames(QString acnumber );
    bool checkAdminCredentialschanged();


private:
    QString m_username;
    int m_useraccount;
    QString m_loanusernamestore;
    int m_loanuseracnumberstore;
    QString pigmypasswordsendtoqml;
    QString loanagentpassword;
    QList<QVariant>copyofpigmycustacnumbers;


    //    QList<QString>details(Databaseclass *ptr5);


    // QAbstractItemModel interface

};

#endif // REPORT_H
