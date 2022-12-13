#ifndef LOANCUSTOMERDETAILSVIEW_H
#define LOANCUSTOMERDETAILSVIEW_H
#include<QDebug>
#include<QObject>
#include<QAbstractTableModel>
#include<databaseclass.h>

using namespace std;
class Loancustomerdetailsview:public QAbstractTableModel
{
    Q_OBJECT
public:
    explicit Loancustomerdetailsview(QObject *parent = nullptr);

    int columnCount(const QModelIndex &parent) const override;
    int rowCount(const QModelIndex &parent) const override;
    QVariant data(const QModelIndex &index,int role)const override;
    virtual QHash<int, QByteArray> roleNames() const override ;


signals:
    void loanuserChanged();
    void loanuseraccountChanged();
public slots:
    int loanCustomervalidation(int loan_accountnumber);
    QString loanusername() const;
    void setLoanusername(const QString &loanusername);
    QString readloaninterest();
    // void insertcalculated_interest();
    QList<QVariant>loancustomerAccount_numbers();
    void loancustomeracnumber(QString acount_no);
    int loanuser_accountnumber() const;
    void setLoanuser_accountnumber(int loanuser_accountnumber);
private:
    QString m_loanusername;
    int m_loanuser_accountnumber;
    QString storename;
    int storeacnumber;


};

#endif // LOANCUSTOMERDETAILSVIEW_H
