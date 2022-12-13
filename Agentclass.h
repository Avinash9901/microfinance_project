#ifndef AGENTCLASS_H
#define AGENTCLASS_H

#include <QObject>

class Agentclass : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString agentname READ getAgentname WRITE setAgentname NOTIFY agentnameChanged)
    Q_PROPERTY(QString agent_mobno READ getAgent_mobno WRITE setAgent_mobno NOTIFY agent_mobnoChanged)
    Q_PROPERTY(QString agentwork READ getAgentwork WRITE setAgentwork NOTIFY agentworkChanged)
    Q_PROPERTY(QString agent_branch READ getAgent_branch WRITE setAgent_branch NOTIFY agent_branchChanged)
    Q_PROPERTY(QString agent_password READ getAgent_password WRITE setAgent_password NOTIFY agent_passwordChanged)
public:
    explicit Agentclass(QObject *parent = nullptr);
public slots:
    const QString &getAgentname() const;
    void setAgentname(const QString &newAgentname);

    const QString &getAgent_mobno() const;
    void setAgent_mobno(const QString &newAgent_mobno);

    const QString &getAgentwork() const;
    void setAgentwork(const QString &newAgentwork);

    const QString &getAgent_branch() const;
    void setAgent_branch(const QString &newAgent_branch);

    const QString &getAgent_password() const;
    void setAgent_password(const QString &newAgent_password);

private:
    QString agentwork;
    QString agentname;
    QString agent_mobno;
    QString agent_branch;
    QString agent_password;




signals:

    void agentnameChanged();
    void agent_mobnoChanged();
    void agentworkChanged();
    void agent_branchChanged();
    void agent_passwordChanged();
};

#endif // AGENTCLASS_H
