AC_PREREQ([2.68])
AC_INIT([statsrelay], m4_esyscmd([tr -d '\n' < VERSION]))
AM_INIT_AUTOMAKE([-Wall -Werror foreign subdir-objects])
AM_SILENT_RULES([yes])
AC_USE_SYSTEM_EXTENSIONS
AC_CONFIG_HEADERS([config.h])

# Checks for programs.
AC_PROG_CC
AM_PROG_CC_C_O

# Checks for libraries.

# Checks for header files.
AC_CHECK_HEADERS([arpa/inet.h fcntl.h inttypes.h netdb.h netinet/in.h stddef.h stdint.h stdbool.h stdlib.h string.h sys/socket.h sys/time.h syslog.h unistd.h])
AC_CHECK_HEADERS([ev.h], [], [AC_MSG_ERROR([unable to find header ev.h])])
AC_CHECK_HEADERS([yaml.h], [], [AC_MSG_ERROR([unable to find header yaml.h])])

# Checks for typedefs, structures, and compiler characteristics.
AC_TYPE_PID_T
AC_TYPE_SIZE_T
AC_TYPE_SSIZE_T
AC_TYPE_UINT16_T
AC_TYPE_UINT32_T
AC_TYPE_UINT64_T
AC_TYPE_UINT8_T

# Checks for library functions.
AC_FUNC_ERROR_AT_LINE
AC_FUNC_FORK
AC_FUNC_MALLOC
AC_FUNC_REALLOC
AC_FUNC_STRTOD
AC_CHECK_FUNCS([gettimeofday memchr memmove memset socket strchr strdup strerror strndup strrchr strtol])

AC_CONFIG_FILES([Makefile
                 src/Makefile])
AC_CHECK_LIB([ev], [ev_run])
AC_CHECK_LIB([yaml], [yaml_parser_initialize])
AC_REVISION([m4_esyscmd_s([git describe --always])])
AC_OUTPUT
