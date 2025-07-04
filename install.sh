#!/bin/bash

# Проверяем, установлена ли переменная LFS
if [ -z "$LFS" ]; then
    echo "Переменная LFS не установлена. Пожалуйста, установите её и повторите попытку."
    exit 1
fi

# Создаем директорию для загрузки, если её нет
mkdir -pv $LFS/sources
cd $LFS/sources

# Функция для загрузки и проверки файла
download_and_check() {
    local url=$1
    local filename=$(basename $url)
    local md5=$2
    
    echo "Скачивание $filename..."
    wget -q --show-progress $url
    
    echo "Проверка контрольной суммы..."
    if ! echo "$md5  $filename" | md5sum -c -; then
        echo "Ошибка: контрольная сумма не совпадает для $filename"
        exit 1
    fi
}

# Список пакетов для загрузки
download_and_check https://download.savannah.gnu.org/releases/acl/acl-2.3.2.tar.xz 590765dee95907dbc3c856f7255bd669
download_and_check https://download.savannah.gnu.org/releases/attr/attr-2.5.2.tar.gz 227043ec2f6ca03c0948df5517f9c927
download_and_check https://ftp.gnu.org/gnu/autoconf/autoconf-2.72.tar.xz 1be79f7106ab6767f18391c5e22be701
download_and_check https://ftp.gnu.org/gnu/automake/automake-1.17.tar.xz 7ab3a02318fee6f5bd42adfc369abf10
download_and_check https://ftp.gnu.org/gnu/bash/bash-5.2.32.tar.gz f204835b2e06c06e37b5ad776ff907f4
download_and_check https://github.com/gavinhoward/bc/releases/download/6.7.6/bc-6.7.6.tar.xz a47aa5e4e7395fbcd159a9228613b97b
download_and_check https://sourceware.org/pub/binutils/releases/binutils-2.43.1.tar.xz 9202d02925c30969d1917e4bad5a2320
download_and_check https://ftp.gnu.org/gnu/bison/bison-3.8.2.tar.xz c28f119f405a2304ff0a7ccdcc629713
download_and_check https://www.sourceware.org/pub/bzip2/bzip2-1.0.8.tar.gz 67e051268d0c475ea773822f7500d0e5
download_and_check https://github.com/libcheck/check/releases/download/0.15.2/check-0.15.2.tar.gz 50fcafcecde5a380415b12e9c574e0b2
download_and_check https://ftp.gnu.org/gnu/coreutils/coreutils-9.5.tar.xz e99adfa059a63db3503cc71f3d151e31
download_and_check https://dbus.freedesktop.org/releases/dbus/dbus-1.14.10.tar.xz 46070a3487817ff690981f8cd2ba9376
download_and_check https://ftp.gnu.org/gnu/dejagnu/dejagnu-1.6.3.tar.gz 68c5208c58236eba447d7d6d1326b821
download_and_check https://ftp.gnu.org/gnu/diffutils/diffutils-3.10.tar.xz 2745c50f6f4e395e7b7d52f902d075bf
download_and_check https://downloads.sourceforge.net/project/e2fsprogs/e2fsprogs/v1.47.1/e2fsprogs-1.47.1.tar.gz 75e6d1353cbe6d5728a98fb0267206cb
download_and_check https://sourceware.org/ftp/elfutils/0.191/elfutils-0.191.tar.bz2 636547248fb3fae58ec48030298d3ef7
download_and_check https://prdownloads.sourceforge.net/expat/expat-2.6.2.tar.xz 0cb75c8feb842c0794ba89666b762a2d
download_and_check https://prdownloads.sourceforge.net/expect/expect5.45.4.tar.gz 00fce8de158422f5ccd2666512329bd2
download_and_check https://astron.com/pub/file/file-5.45.tar.gz 26b2a96d4e3a8938827a1e572afd527a
download_and_check https://ftp.gnu.org/gnu/findutils/findutils-4.10.0.tar.xz 870cfd71c07d37ebe56f9f4aaf4ad872
download_and_check https://github.com/westes/flex/releases/download/v2.6.4/flex-2.6.4.tar.gz 2882e3179748cc9f9c23ec593d6adc8d
download_and_check https://pypi.org/packages/source/f/flit-core/flit_core-3.9.0.tar.gz 3bc52f1952b9a78361114147da63c35b
download_and_check https://ftp.gnu.org/gnu/gawk/gawk-5.3.0.tar.xz 97c5a7d83f91a7e1b2035ebbe6ac7abd
download_and_check https://ftp.gnu.org/gnu/gcc/gcc-14.2.0/gcc-14.2.0.tar.xz 2268420ba02dc01821960e274711bde0
download_and_check https://ftp.gnu.org/gnu/gdbm/gdbm-1.24.tar.gz c780815649e52317be48331c1773e987
download_and_check https://ftp.gnu.org/gnu/gettext/gettext-0.22.5.tar.xz 3ae5580599d84be93e6213930facb2db
download_and_check https://ftp.gnu.org/gnu/glibc/glibc-2.40.tar.xz b390feef233022114950317f10c4fa97
download_and_check https://ftp.gnu.org/gnu/gmp/gmp-6.3.0.tar.xz 956dc04e864001a9c22429f761f2c283
download_and_check https://ftp.gnu.org/gnu/gperf/gperf-3.1.tar.gz 9e251c0a618ad0824b51117d5d9db87e
download_and_check https://ftp.gnu.org/gnu/grep/grep-3.11.tar.xz 7c9bbd74492131245f7cdb291fa142c0
download_and_check https://ftp.gnu.org/gnu/groff/groff-1.23.0.tar.gz 5e4f40315a22bb8a158748e7d5094c7d
download_and_check https://ftp.gnu.org/gnu/grub/grub-2.12.tar.xz 60c564b1bdc39d8e43b3aab4bc0fb140
download_and_check https://ftp.gnu.org/gnu/gzip/gzip-1.13.tar.xz d5c9fc9441288817a4a0be2da0249e29
download_and_check https://github.com/Mic92/iana-etc/releases/download/20240806/iana-etc-20240806.tar.gz ea3c37c00d22f1159fc3b7d988de8476
download_and_check https://ftp.gnu.org/gnu/inetutils/inetutils-2.5.tar.xz 9e5a6dfd2d794dc056a770e8ad4a9263
download_and_check https://launchpad.net/intltool/trunk/0.51.0/+download/intltool-0.51.0.tar.gz 12e517cac2b57a0121cda351570f1e63
download_and_check https://www.kernel.org/pub/linux/utils/net/iproute2/iproute2-6.10.0.tar.xz 6282e47de9c5b230e83537fba7181c9c
download_and_check https://pypi.org/packages/source/J/Jinja2/jinja2-3.1.4.tar.gz 02ca9a6364c92e83d14b037bef4732bc
download_and_check https://www.kernel.org/pub/linux/utils/kbd/kbd-2.6.4.tar.xz e2fd7adccf6b1e98eb1ae8d5a1ce5762
download_and_check https://www.kernel.org/pub/linux/utils/kernel/kmod/kmod-33.tar.xz c451c4aa61521adbe8af147f498046f8
download_and_check https://www.greenwoodsoftware.com/less/less-661.tar.gz 44f54b6313c5d71fa1ac224d8d84766a
download_and_check https://www.kernel.org/pub/linux/libs/security/linux-privs/libcap2/libcap-2.70.tar.xz df0e20c6eeca849347b87d5d6a8870c0
download_and_check https://github.com/libffi/libffi/releases/download/v3.4.6/libffi-3.4.6.tar.gz b9cac6c5997dca2b3787a59ede34e0eb
download_and_check https://download.savannah.gnu.org/releases/libpipeline/libpipeline-1.5.7.tar.gz 1a48b5771b9f6c790fb4efdb1ac71342
download_and_check https://ftp.gnu.org/gnu/libtool/libtool-2.4.7.tar.xz 2fc0b6ddcd66a89ed6e45db28fa44232
download_and_check https://github.com/besser82/libxcrypt/releases/download/v4.4.36/libxcrypt-4.4.36.tar.xz b84cd4104e08c975063ec6c4d0372446
download_and_check https://www.kernel.org/pub/linux/kernel/v6.x/linux-6.10.5.tar.xz 276ef1f11ed3713ec5d6f506ff55ac12
download_and_check https://github.com/lz4/lz4/releases/download/v1.10.0/lz4-1.10.0.tar.gz dead9f5f1966d9ae56e1e32761e4e675
download_and_check https://ftp.gnu.org/gnu/m4/m4-1.4.19.tar.xz 0d90823e1426f1da2fd872df0311298d
download_and_check https://ftp.gnu.org/gnu/make/make-4.4.1.tar.gz c8469a3713cbbe04d955d4ae4be23eeb
download_and_check https://download.savannah.gnu.org/releases/man-db/man-db-2.12.1.tar.xz 7b044e5020aab89db41ac7ee59d6d84a
download_and_check https://www.kernel.org/pub/linux/docs/man-pages/man-pages-6.9.1.tar.xz 4d56775b6cce4edf1e496249e7c01c1a
download_and_check https://pypi.org/packages/source/M/MarkupSafe/MarkupSafe-2.1.5.tar.gz 8fe7227653f2fb9b1ffe7f9f2058998a
download_and_check https://github.com/mesonbuild/meson/releases/download/1.5.1/meson-1.5.1.tar.gz c4f2b3e5ea632685f61ba1b833c4905c
download_and_check https://ftp.gnu.org/gnu/mpc/mpc-1.3.1.tar.gz 5c9bc658c9fd0f940e8e3e0f09530c62
download_and_check https://ftp.gnu.org/gnu/mpfr/mpfr-4.2.1.tar.xz 523c50c6318dde6f9dc523bc0244690a
download_and_check https://invisible-mirror.net/archives/ncurses/ncurses-6.5.tar.gz ac2d2629296f04c8537ca706b6977687
download_and_check https://github.com/ninja-build/ninja/archive/v1.12.1/ninja-1.12.1.tar.gz 6288992b05e593a391599692e2f7e490
download_and_check https://www.openssl.org/source/openssl-3.3.1.tar.gz 8a4342b399c18f870ca6186299195984
download_and_check https://ftp.gnu.org/gnu/patch/patch-2.7.6.tar.xz 78ad9937e4caadcba1526ef1853730d5
download_and_check https://www.cpan.org/src/5.0/perl-5.40.0.tar.xz cfe14ef0709b9687f9c514042e8e1e82
download_and_check https://distfiles.ariadne.space/pkgconf/pkgconf-2.3.0.tar.xz 833363e77b5bed0131c7bc4cc6f7747b
download_and_check https://sourceforge.net/projects/procps-ng/files/Production/procps-ng-4.0.4.tar.xz 2f747fc7df8ccf402d03e375c565cf96
download_and_check https://sourceforge.net/projects/psmisc/files/psmisc/psmisc-23.7.tar.xz 53eae841735189a896d614cba440eb10
download_and_check https://www.python.org/ftp/python/3.12.5/Python-3.12.5.tar.xz 02c7d269e077f4034963bba6befdc715
download_and_check https://www.python.org/ftp/python/doc/3.12.5/python-3.12.5-docs-html.tar.bz2 52274d813236ca4a972fb6988480dc56
download_and_check https://ftp.gnu.org/gnu/readline/readline-8.2.13.tar.gz 05080bf3801e6874bb115cd6700b708f
download_and_check https://ftp.gnu.org/gnu/sed/sed-4.9.tar.xz 6aac9b2dbafcd5b7a67a8a9bcb8036c3
download_and_check https://pypi.org/packages/source/s/setuptools/setuptools-72.2.0.tar.gz 2e0ffd0f6fc632a11442b79d9b1c68bd
download_and_check https://github.com/shadow-maint/shadow/releases/download/4.16.0/shadow-4.16.0.tar.xz eb70bad3316d08f0d3bb3d4bbeccb3b4
download_and_check https://github.com/systemd/systemd/archive/v256.4/systemd-256.4.tar.gz 03bd1ff158ec0bc55428c77a8f8495bd
download_and_check https://anduin.linuxfromscratch.org/LFS/systemd-man-pages-256.4.tar.xz 8dbcf0ff0d8e5e9d3565f9d2fc153310
download_and_check https://ftp.gnu.org/gnu/tar/tar-1.35.tar.xz a2d8042658cfd8ea939e6d911eaf4152
download_and_check https://downloads.sourceforge.net/tcl/tcl8.6.14-src.tar.gz c30b57c6051be28fa928d09aca82841e
download_and_check https://downloads.sourceforge.net/tcl/tcl8.6.14-html.tar.gz 5467198f8d57c54835bf80b98ffb0170
download_and_check https://ftp.gnu.org/gnu/texinfo/texinfo-7.1.tar.xz edd9928b4a3f82674bcc3551616eef3b
download_and_check https://www.iana.org/time-zones/repository/releases/tzdata2024a.tar.gz 2349edd8335245525cc082f2755d5bf4
download_and_check https://www.kernel.org/pub/linux/utils/util-linux/v2.40/util-linux-2.40.2.tar.xz 88faefc8fefced097e58142077a3d14e
download_and_check https://github.com/vim/vim/archive/v9.1.0660/vim-9.1.0660.tar.gz c512a99b3704f193be1a181cc644b2b2
download_and_check https://pypi.org/packages/source/w/wheel/wheel-0.44.0.tar.gz 440ff4fe51579b7ed16f02af8f8d9494
download_and_check https://cpan.metacpan.org/authors/id/T/TO/TODDR/XML-Parser-2.47.tar.gz 89a8e82cfd2ad948b349c0a69c494463
download_and_check https://github.com//tukaani-project/xz/releases/download/v5.6.2/xz-5.6.2.tar.xz bbf73fb28425cebb854328599f85c4cf
download_and_check https://zlib.net/fossils/zlib-1.3.1.tar.gz 9855b6d802d7fe5b7bd5b196a2271655
download_and_check https://github.com/facebook/zstd/releases/download/v1.5.6/zstd-1.5.6.tar.gz 5a473726b3445d0e5d6296afd1ab6854

echo "Все пакеты успешно загружены и проверены в $LFS/sources"
