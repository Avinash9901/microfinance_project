#ifndef CUSTOMERS_H
#define CUSTOMERS_H

#include <QObject>

class Customers : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString Cname READ Cname WRITE setCname NOTIFY setnamechanged)
    Q_PROPERTY(QString mob_no READ mob_no WRITE setmob_no NOTIFY setmob_nochanged)
    Q_PROPERTY(QString adhar_no READ adhar_no WRITE setadhar_no NOTIFY setadhar_nochanged)
    Q_PROPERTY(QString pan_no READ pan_no WRITE setpan_no NOTIFY setpan_nochanged)
    Q_PROPERTY(QString place READ place WRITE setplace NOTIFY setplacechanged)
    Q_PROPERTY(QString branch READ branch WRITE setbranch NOTIFY setbranchchanged)
    Q_PROPERTY(QString agents READ agents WRITE setagents NOTIFY setagentschanged)
    Q_PROPERTY(int accnumber READ accnumber WRITE setaccnumber NOTIFY setaccnumberchanged)
    Q_PROPERTY(float deposite READ deposite WRITE setdeposite NOTIFY setaccnumberchanged)
    Q_PROPERTY(float piggy_interest READ piggy_interest WRITE setpiggy_interest NOTIFY setpiggy_interestchanged)

    Q_PROPERTY(float debit READ debit WRITE setdebit NOTIFY setdebitchanged)
    Q_PROPERTY(float transaction READ transaction WRITE settransaction NOTIFY settransactionchanged)
    Q_PROPERTY(float balance READ balance WRITE balance NOTIFY setbalancechanged)
    Q_PROPERTY(int loanamount READ loanamount WRITE setloanamount NOTIFY setloanamountchanged)
    Q_PROPERTY(int loaninterest READ loaninterest WRITE setloaninterest NOTIFY setloaninterestchanged)
    Q_PROPERTY(float loaninterestreceive READ loaninterestreceive WRITE setloaninterestreceive NOTIFY setloaninterestreceivechanged)
    Q_PROPERTY(int principalreceive READ principalreceive WRITE setprincipalreceive NOTIFY setprincipalreceivechanged)
    Q_PROPERTY(float calculatedinterest READ calculatedinterest WRITE setcalculatedinterest NOTIFY setcalculatedinterestchanged)
    QString m_Cname;
    QString m_mob_no;
    QString m_adhar_no;
    QString m_pan_no;
    QString m_place;
    QString m_branch;
    QString m_agents;
    //int accnumber;
    float m_deposite;
    int m_accnumber;
    QString m_datse;
    float m_debit;
    float m_transaction;
    float m_balance;
    float m_total_piggydeposite_amount;
    int m_loanamount;
    int m_loaninterest;
    float m_loaninterestreceive;
    int m_principalreceive=0;
    long long calculatedloaninterest;
    float m_calculatedinterest;
    float calculated_interestof_loan;
    float m_piggy_interest;

public:
    explicit Customers(QObject *parent = nullptr);

    QString Cname() const
    {
        return m_Cname;
    }

    QString mob_no() const
    {
        return m_mob_no;
    }

    QString adhar_no() const
    {
        return m_adhar_no;
    }

    QString pan_no() const
    {
        return m_pan_no;
    }

    QString place() const
    {
        return m_place;
    }

    QString branch() const
    {
        return m_branch;
    }

    QString agents() const
    {
        return m_agents;
    }


    float deposite() const
    {
        return m_deposite;
    }

    int accnumber() const
    {
        return m_accnumber;
    }

    QString datse() const
    {
        return m_datse;
    }

    float debit() const
    {
        return m_debit;
    }

    float transaction() const
    {
        return m_transaction;
    }

    float balance() const
    {
        return m_balance;
    }

    void setBalance(float balance);

    int loanamount() const
    {
        return m_loanamount;
    }

    int loaninterest() const
    {
        return m_loaninterest;
    }

    float loaninterestreceive() const
    {
        return m_loaninterestreceive;
    }

    int principalreceive() const
    {
        return m_principalreceive;
    }

    float calculatedinterest() const
    {
        return m_calculatedinterest;
    }

    float getCalculated_interestof_loan() const;
    void setCalculated_interestof_loan(float value);

    float getTotal_piggydeposite_amount() const;
    void setTotal_piggydeposite_amount(float total_piggydeposite_amount);

    float piggy_interest() const
    {
        return m_piggy_interest;
    }

signals:
    void setnamechanged(QString Cname);
    void setmob_nochanged(QString mob_no);
    void setadhar_nochanged(QString adhar_no);
    void setpan_nochanged(QString pan_no);
    void setplacechanged(QString place);
    void setbranchchanged(QString branch);
    void setagentschanged(QString agents);
    void setdepositechanged(float deposite);
    void setaccnumberchanged(int accnumber);
    void setdatsechanged(QString datse);
    void setdebitchanged(float debit);
    void settransactionchanged(float transaction);
    void setbalancechanged(float balance);

    void setloanamountchanged(int loanamount);

    void setloaninterestchanged(int loaninterest);

    void setloaninterestreceivechanged(float loaninterestreceive);

    void setprincipalreceivechanged(int principalreceive);

    void setcalculatedinterestchanged(float calculatedinterest);

    void setpiggy_interestchanged(float piggy_interest);

public slots:
    void customerdetails( );
    void setCname(QString Cname)
    {
        if (m_Cname == Cname)
            return;

        m_Cname = Cname;
        emit setnamechanged(m_Cname);
    }
    void setmob_no(QString mob_no)
    {
        if (m_mob_no == mob_no)
            return;

        m_mob_no = mob_no;
        emit setmob_nochanged(m_mob_no);
    }
    void setadhar_no(QString adhar_no)
    {
        if (m_adhar_no == adhar_no)
            return;

        m_adhar_no = adhar_no;
        emit setadhar_nochanged(m_adhar_no);
    }
    void setpan_no(QString pan_no)
    {
        if (m_pan_no == pan_no)
            return;

        m_pan_no = pan_no;
        emit setpan_nochanged(m_pan_no);
    }
    void setplace(QString place)
    {
        if (m_place == place)
            return;

        m_place = place;
        emit setplacechanged(m_place);
    }
    void setbranch(QString branch)
    {
        if (m_branch == branch)
            return;

        m_branch = branch;
        emit setbranchchanged(m_branch);
    }
    void setagents(QString agents)
    {
        if (m_agents == agents)
            return;

        m_agents = agents;
        emit setagentschanged(m_agents);
    }
    void setdeposite(float deposite)
    {
        qWarning("Floating point comparison needs context sanity check");
        if (qFuzzyCompare(m_deposite, deposite))
            return;
        m_deposite = deposite;
        emit setdepositechanged(m_deposite);
    }
    void setaccnumber(int accnumber)
    {
        if (m_accnumber == accnumber)
            return;
        m_accnumber = accnumber;
        emit setaccnumberchanged(m_accnumber);
    }
    void setdatse(QString datse)
    {
        if (m_datse == datse)
            return;

        m_datse = datse;
        emit setdatsechanged(m_datse);
    }
    void setdebit(float debit)
    {
        qWarning("Floating point comparison needs context sanity check");
        if (qFuzzyCompare(m_debit, debit))
            return;

        m_debit = debit;
        emit setdebitchanged(m_debit);
    }
    void settransaction(float transaction)
    {
        qWarning("Floating point comparison needs context sanity check");
        if (qFuzzyCompare(m_transaction, transaction))
            return;

        m_transaction = transaction;
        emit settransactionchanged(m_transaction);
    }
    void balance(float balance)
    {
        qWarning("Floating point comparison needs context sanity check");
        if (qFuzzyCompare(m_balance, balance))
            return;

        m_balance = balance;
        emit setbalancechanged(m_balance);
    }
    void setloanamount(int loanamount)
    {
        if (m_loanamount == loanamount)
            return;

        m_loanamount = loanamount;
        emit setloanamountchanged(m_loanamount);
    }
    void setloaninterest(int loaninterest)
    {
        if (m_loaninterest == loaninterest)
            return;

        m_loaninterest = loaninterest;
        emit setloaninterestchanged(m_loaninterest);
    }
    void setloaninterestreceive(float loaninterestreceive)
    {
        qWarning("Floating point comparison needs context sanity check");
        if (qFuzzyCompare(m_loaninterestreceive, loaninterestreceive))
            return;

        m_loaninterestreceive = loaninterestreceive;
        emit setloaninterestreceivechanged(m_loaninterestreceive);
    }
    void setprincipalreceive(int principalreceive)
    {
        if (m_principalreceive == principalreceive)
            return;

        m_principalreceive = principalreceive;
        emit setprincipalreceivechanged(m_principalreceive);
    }
    void setcalculatedinterest(float calculatedinterest)
    {
        qWarning("Floating point comparison needs context sanity check");
        if (qFuzzyCompare(m_calculatedinterest, calculatedinterest))
            return;

        m_calculatedinterest = calculatedinterest;
        emit setcalculatedinterestchanged(m_calculatedinterest);
    }
    void setpiggy_interest(float piggy_interest)
    {
        qWarning("Floating point comparison needs context sanity check");
        if (qFuzzyCompare(m_piggy_interest, piggy_interest))
            return;

        m_piggy_interest = piggy_interest;
        emit setpiggy_interestchanged(m_piggy_interest);
    }
};

#endif // CUSTOMERS_H
