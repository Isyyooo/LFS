dnl Copyright (C) 2022 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl Enable features using the zstd library.
AC_DEFUN([AC_ZSTD], [
AC_ARG_WITH(zstd,
  [AS_HELP_STRING([--with-zstd], [support zstd compressed debug sections (default=auto)])],
  [], [with_zstd=auto])

AS_IF([test "$with_zstd" != no],
  [PKG_CHECK_MODULES(ZSTD, [libzstd >= 1.4.0], [
    AC_DEFINE(HAVE_ZSTD, 1, [Define to 1 if zstd is enabled.])
  ], [
    if test "$with_zstd" = yes; then
      AC_MSG_ERROR([--with-zstd was given, but pkgconfig/libzstd.pc is not found])
    fi
  ])
  ])
])
