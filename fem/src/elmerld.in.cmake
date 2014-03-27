#!/bin/sh -f

if test "$ELMER_LIB" = ""; then
  if  test "$ELMER_HOME" = ""; then
     LIBDIR=@prefix@/lib
  else
     LIBDIR=$ELMER_HOME/lib
  fi
else
  LIBDIR=$ELMER_LIB
fi

LD=@CMAKE_Fortran_COMPILER@
cmd="$LD @CMAKE_Fortran_FLAGS@ @CMAKE_SHARED_LIBRARY_Fortran_FLAGS@ @CMAKE_SHARED_LIBRARY_CREATE_Fortran_FLAGS@ $* -L$LIBDIR -lelmersolver"
printf "%s " $cmd
printf "\n"
# @USE_WINDOWS_COMPILER_TRUE@@SH_LD@ @SH_LDFLAGS@ @SH_LINKING_TO_FLAGS@ @B64FLAGS@ @EXTRA_LIBS@ $* -L$LIBDIR -lelmersolver
# @USE_WINDOWS_COMPILER_FALSE@@SH_LD@ @SH_LDFLAGS@ @SH_LINKING_TO_FLAGS@ @B64FLAGS@ @EXTRA_LIBS@ $*
