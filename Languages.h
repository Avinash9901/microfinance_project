#ifndef LANGUAGES_H
#define LANGUAGES_H
#include <QLocale>
#include <QObject>

class Languages : public QObject
{
    Q_OBJECT
public:
    explicit Languages(QObject *parent = nullptr);
    enum Language{
        KAN=QLocale::Kannada,
        ENG=QLocale::English
    };
    Q_ENUM(Language)
signals:

};

#endif // LANGUAGES_H
