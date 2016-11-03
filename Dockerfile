FROM opensuse:42.1
MAINTAINER robin.roth@kit.edu

RUN zypper --gpg-auto-import-keys --non-interactive ref && \
    zypper --gpg-auto-import-keys --non-interactive up

RUN zypper --non-interactive in --auto-agree-with-licenses \
    automake make libtool \
    gcc gcc-fortran gcc-c++ \
    gcc5 gcc5-fortran gcc5-c++ \
    binutils-gold \
    gsl gsl-devel \
    python3-pytest \
    git
