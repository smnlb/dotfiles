#!/bin/bash

echo "== Обновление списка пакетов =="
pacman -Qeq > ~/pkglist.txt

echo "== Поиск измененных конфигов =="
# Флаг -u добавляет в коммит только те файлы, которые уже отслеживаются и были изменены
yadm add -u

echo "== Создание коммита =="
# Проверяем, есть ли что коммитить
if ! yadm diff --cached --quiet; then
    yadm commit -m "Automated dotfiles backup [$(date +'%Y-%m-%d %H:%M:%S')]"
    echo "== Отправка на GitHub =="
    yadm push
else
    echo "== Нет изменений для бэкапа =="
fi

echo "== Готово! =="
