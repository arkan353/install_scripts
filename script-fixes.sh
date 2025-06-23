#!/bin/bash

# Функция для загрузки и установки пакета
install_package() {
    local name=$1
    local url=$2
    local filename=$(basename "$url")
    local dirname="${filename%.tar.*}"
    dirname="${dirname%.tgz}"
    dirname="${dirname%.tar}"

    echo "Установка $name..."
    
    # Скачивание пакета
    wget --no-check-certificate "$url" -O "$filename"
    
    # Распаковка
    if [[ "$filename" == *".tar.gz" || "$filename" == *".tgz" ]]; then
        tar -xzf "$filename"
    elif [[ "$filename" == *".tar.xz" ]]; then
        tar -xJf "$filename"
    elif [[ "$filename" == *".tar.bz2" ]]; then
        tar -xjf "$filename"
    else
        echo "Неизвестный формат архива для $filename"
        return 1
    fi
    
    # Переход в директорию с исходным кодом
    cd "$dirname" || { echo "Не удалось перейти в $dirname"; return 1; }
    
    # Конфигурация, сборка и установка
    
    
    # Возврат в исходную директорию
    cd ..
    
    echo "$name успешно установлен"
    echo "----------------------------------------"
}



cd $LFS/sources || exit

# Устанавливаем пакеты
install_package "Expat" "https://prdownloads.sourceforge.net/expat/expat-2.6.2.tar.xz"
install_package "Expect" "https://prdownloads.sourceforge.net/expect/expect5.45.4.tar.gz"
install_package "File" "https://astron.com/pub/file/file-5.45.tar.gz"
install_package "Findutils" "https://ftp.gnu.org/gnu/findutils/findutils-4.10.0.tar.xz"
install_package "Flex" "https://github.com/westes/flex/releases/download/v2.6.4/flex-2.6.4.tar.gz"
install_package "Flit-core" "https://pypi.org/packages/source/f/flit-core/flit_core-3.9.0.tar.gz"
install_package "Gawk" "https://ftp.gnu.org/gnu/gawk/gawk-5.3.0.tar.xz"
install_package "GCC" "https://ftp.gnu.org/gnu/gcc/gcc-14.2.0/gcc-14.2.0.tar.xz"
install_package "GDBM" "https://ftp.gnu.org/gnu/gdbm/gdbm-1.24.tar.gz"
install_package "Gettext" "https://ftp.gnu.org/gnu/gettext/gettext-0.22.5.tar.xz"
install_package "Glibc" "https://ftp.gnu.org/gnu/glibc/glibc-2.40.tar.xz"
install_package "GMP" "https://ftp.gnu.org/gnu/gmp/gmp-6.3.0.tar.xz"
install_package "Gperf" "https://ftp.gnu.org/gnu/gperf/gperf-3.1.tar.gz"
install_package "Grep" "https://ftp.gnu.org/gnu/grep/grep-3.11.tar.xz"
install_package "Groff" "https://ftp.gnu.org/gnu/groff/groff-1.23.0.tar.gz"
install_package "GRUB" "https://ftp.gnu.org/gnu/grub/grub-2.12.tar.xz"
install_package "Gzip" "https://ftp.gnu.org/gnu/gzip/gzip-1.13.tar.xz"
install_package "Iana-Etc" "https://github.com/Mic92/iana-etc/releases/download/20240806/iana-etc-20240806.tar.gz"
install_package "Inetutils" "https://ftp.gnu.org/gnu/inetutils/inetutils-2.5.tar.xz"
install_package "Intltool" "https://launchpad.net/intltool/trunk/0.51.0/+download/intltool-0.51.0.tar.gz"
install_package "IPRoute2" "https://www.kernel.org/pub/linux/utils/net/iproute2/iproute2-6.10.0.tar.xz"
install_package "Jinja2" "https://pypi.org/packages/source/J/Jinja2/jinja2-3.1.4.tar.gz"
install_package "Kbd" "https://www.kernel.org/pub/linux/utils/kbd/kbd-2.6.4.tar.xz"
install_package "Kmod" "https://www.kernel.org/pub/linux/utils/kernel/kmod/kmod-33.tar.xz"
install_package "Less" "https://www.greenwoodsoftware.com/less/less-661.tar.gz"
install_package "Libcap" "https://www.kernel.org/pub/linux/libs/security/linux-privs/libcap2/libcap-2.70.tar.xz"
install_package "Libffi" "https://github.com/libffi/libffi/releases/download/v3.4.6/libffi-3.4.6.tar.gz"
install_package "Libpipeline" "https://download.savannah.gnu.org/releases/libpipeline/libpipeline-1.5.7.tar.gz"
install_package "Libtool" "https://ftp.gnu.org/gnu/libtool/libtool-2.4.7.tar.xz"
install_package "Libxcrypt" "https://github.com/besser82/libxcrypt/releases/download/v4.4.36/libxcrypt-4.4.36.tar.xz"
install_package "Linux" "https://www.kernel.org/pub/linux/kernel/v6.x/linux-6.10.5.tar.xz"
install_package "Lz4" "https://github.com/lz4/lz4/releases/download/v1.10.0/lz4-1.10.0.tar.gz"
install_package "M4" "https://ftp.gnu.org/gnu/m4/m4-1.4.19.tar.xz"
install_package "Make" "https://ftp.gnu.org/gnu/make/make-4.4.1.tar.gz"
install_package "Man-DB" "https://download.savannah.gnu.org/releases/man-db/man-db-2.12.1.tar.xz"
install_package "Man-pages" "https://www.kernel.org/pub/linux/docs/man-pages/man-pages-6.9.1.tar.xz"
install_package "MarkupSafe" "https://pypi.org/packages/source/M/MarkupSafe/MarkupSafe-2.1.5.tar.gz"
install_package "Meson" "https://github.com/mesonbuild/meson/releases/download/1.5.1/meson-1.5.1.tar.gz"
install_package "MPC" "https://ftp.gnu.org/gnu/mpc/mpc-1.3.1.tar.gz"
install_package "MPFR" "https://ftp.gnu.org/gnu/mpfr/mpfr-4.2.1.tar.xz"
install_package "Ncurses" "https://invisible-mirror.net/archives/ncurses/ncurses-6.5.tar.gz"
install_package "Ninja" "https://github.com/ninja-build/ninja/archive/v1.12.1/ninja-1.12.1.tar.gz"
install_package "OpenSSL" "https://www.openssl.org/source/openssl-3.3.1.tar.gz"
install_package "Patch" "https://ftp.gnu.org/gnu/patch/patch-2.7.6.tar.xz"
install_package "Perl" "https://www.cpan.org/src/5.0/perl-5.40.0.tar.xz"
install_package "Pkgconf" "https://distfiles.ariadne.space/pkgconf/pkgconf-2.3.0.tar.xz"
install_package "Procps" "https://sourceforge.net/projects/procps-ng/files/Production/procps-ng-4.0.4.tar.xz"
install_package "Psmisc" "https://sourceforge.net/projects/psmisc/files/psmisc/psmisc-23.7.tar.xz"
install_package "Python" "https://www.python.org/ftp/python/3.12.5/Python-3.12.5.tar.xz"
install_package "Readline" "https://ftp.gnu.org/gnu/readline/readline-8.2.13.tar.gz"
install_package "Sed" "https://ftp.gnu.org/gnu/sed/sed-4.9.tar.xz"
install_package "Setuptools" "https://pypi.org/packages/source/s/setuptools/setuptools-72.2.0.tar.gz"
install_package "Shadow" "https://github.com/shadow-maint/shadow/releases/download/4.16.0/shadow-4.16.0.tar.xz"
install_package "Systemd" "https://github.com/systemd/systemd/archive/v256.4/systemd-256.4.tar.gz"
install_package "Tar" "https://ftp.gnu.org/gnu/tar/tar-1.35.tar.xz"
install_package "Tcl" "https://downloads.sourceforge.net/tcl/tcl8.6.14-src.tar.gz"
install_package "Texinfo" "https://ftp.gnu.org/gnu/texinfo/texinfo-7.1.tar.xz"
install_package "Time Zone Data" "https://www.iana.org/time-zones/repository/releases/tzdata2024a.tar.gz"
install_package "Util-linux" "https://www.kernel.org/pub/linux/utils/util-linux/v2.40/util-linux-2.40.2.tar.xz"
install_package "Vim" "https://github.com/vim/vim/archive/v9.1.0660/vim-9.1.0660.tar.gz"
install_package "Wheel" "https://pypi.org/packages/source/w/wheel/wheel-0.44.0.tar.gz"
install_package "XML::Parser" "https://cpan.metacpan.org/authors/id/T/TO/TODDR/XML-Parser-2.47.tar.gz"
install_package "Xz Utils" "https://github.com//tukaani-project/xz/releases/download/v5.6.2/xz-5.6.2.tar.xz"
install_package "Zlib" "https://zlib.net/fossils/zlib-1.3.1.tar.gz"
install_package "Zstd" "https://github.com/facebook/zstd/releases/download/v1.5.6/zstd-1.5.6.tar.gz"

echo "Все пакеты успешно установлены!"
