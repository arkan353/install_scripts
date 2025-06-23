#!/bin/bash

# Проверяем, установлена ли переменная LFS
if [ -z "$LFS" ]; then
    echo "Ошибка: Переменная LFS не установлена."
    exit 1
fi

# Массив с информацией о патчах
patches=(
    "https://mirror.linuxfromscratch.ru/patches/lfs/12.2/bzip2-1.0.8-install_docs-1.patch"
    "https://mirror.linuxfromscratch.ru/patches/lfs/12.2/coreutils-9.5-i18n-2.patch"
    "https://mirror.linuxfromscratch.ru/patches/lfs/12.2/expect-5.45.4-gcc14-1.patch"
    "https://mirror.linuxfromscratch.ru/patches/lfs/12.2/glibc-2.40-fhs-1.patch"
    "https://mirror.linuxfromscratch.ru/patches/lfs/12.2/kbd-2.6.4-backspace-1.patch"
)

# Скачиваем каждый патч
for patch_url in "${patches[@]}"; do
    echo "Скачивание: $patch_url"
    wget -P "$LFS/sources" "$patch_url"
    
    if [ $? -eq 0 ]; then
        echo "Успешно скачан: $(basename "$patch_url")"
    else
        echo "Ошибка при скачивании: $(basename "$patch_url")"
    fi
done

echo "Все патчи скачаны в $LFS/sources"
