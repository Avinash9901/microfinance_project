#include "Agentclass.h"

Agentclass::Agentclass(QObject *parent)
    : QObject{parent}
{

}

const QString &Agentclass::getAgentname() const
{
    return agentname;
}

void Agentclass::setAgentname(const QString &newAgentname)
{
    if (agentname == newAgentname)
        return;
    agentname = newAgentname;
    emit agentnameChanged();
}

const QString &Agentclass::getAgent_mobno() const
{
    return agent_mobno;
}

void Agentclass::setAgent_mobno(const QString &newAgent_mobno)
{
    if (agent_mobno == newAgent_mobno)
        return;
    agent_mobno = newAgent_mobno;
    emit agent_mobnoChanged();
}

const QString &Agentclass::getAgentwork() const
{
    return agentwork;
}

void Agentclass::setAgentwork(const QString &newAgentwork)
{
    if (agentwork == newAgentwork)
        return;
    agentwork = newAgentwork;
    emit agentworkChanged();
}

const QString &Agentclass::getAgent_branch() const
{
    return agent_branch;
}

void Agentclass::setAgent_branch(const QString &newAgent_branch)
{
    if (agent_branch == newAgent_branch)
        return;
    agent_branch = newAgent_branch;
    emit agent_branchChanged();
}

const QString &Agentclass::getAgent_password() const
{
    return agent_password;
}

void Agentclass::setAgent_password(const QString &newAgent_password)
{
    if (agent_password == newAgent_password)
        return;
    agent_password = newAgent_password;
    emit agent_passwordChanged();
}
