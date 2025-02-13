######################################################################
# Valkyrie qmake configuration file
#
# Note: By default PREFIX="/usr/local". To change this simply do:
# qmake "PREFIX=<your_dir>" && make && make install
######################################################################

NAME    = valkyrie
VERSION = 2.0.1.SVN
PACKAGE = $$NAME-$$VERSION

######################################################################
# Set a default value for PREFIX (etc) in the generated makefiles
# Note: ignore INSTALL_ROOT: it's a qt special, can't be set from here
isEmpty(PREFIX) {
  PREFIX = /usr/local
}
isEmpty(BINDIR) {
  BINDIR = $$PREFIX/bin
}
isEmpty(DATADIR) {
  DATADIR = $$PREFIX/share
}

######################################################################
# Install paths relative to $$PREFIX:
target.path    = $$BINDIR
doc.path       = $$DATADIR/$$PACKAGE/doc
doc_imgs.path  = $$DATADIR/$$PACKAGE/doc/images

######################################################################
# Qt modules
QT += core5compat core xml widgets printsupport


######################################################################
# Project configuration & compiler options
CONFIG           += qt
CONFIG           += warn_on     # compiler should issue max warnings
CONFIG           += silent      # make --quiet
CONFIG           += release     # release/debug
#CONFIG           += debug       # release/debug
