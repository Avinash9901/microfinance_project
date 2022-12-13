#ifndef TRANSLATION_H
#define TRANSLATION_H
#include<QTranslator>
#include <QObject>
#include "Languages.h"
#include<QCoreApplication>

class Translation : public QObject
{
    Q_OBJECT
public:
    explicit Translation(QObject *parent = nullptr);

    const QString &getMylngstring() const;
    void setMylngstring(const QString &newMylngstring);

signals:

    void mylngstringChanged();
public slots:
    void updateLanguage(int lang);

private:
    QString mylngstring;
    QTranslator mytranslator;

    Q_PROPERTY(QString mylngstring READ getMylngstring WRITE setMylngstring NOTIFY mylngstringChanged)
};

#endif // TRANSLATION_H
