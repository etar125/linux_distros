#!/bin/bash
[ -f "README.md" ] && rm README.md
cat >> "README.md" << EOF
# Список Linux дистрибутивов
Это **просто список**!  
Тут нет характеристик, описаний и прочего, кроме ссылок.  

## Какие дистры
В данный список добавляются все живые дистрибутивы Linux, с условием, 
что у них есть сайт или репозиторий, который спокойно открывается (в Chromium, т.к. Firefox иногда выдаёт \`PR_END_OF_FILE_ERROR\`).  
Я мог за чем-то не уследить и случайно добавить мёртвый дистрибутив, 
или дистрибутив умер уже после добавления.  
Если вы заметили таковой или хотите добавить какой-то другой дистро, 
пишите в [Issues](https://github.com/etar125/linux_distros/issues).  

## Формат
Список представлен в виде файла \`list.txt\`.  
В нём строки формата \`название=ссылка\`.  

## Сколько?
Посмотреть текущее кол-во дистрибутивов можете с помощью
скрипта \`sk\`.  
EOF
echo -ne "Текущее кол-во -- $(./sk).\n\n---\n\nПоследний раз список обновлялся $(date '+%-d %B %Y')\n\n" >> "README.md"
