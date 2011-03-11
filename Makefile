# This Makefile is for the Tapper::Schema extension to perl.
#
# It was generated automatically by MakeMaker version
# 6.48 (Revision: 64800) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#       ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker ARGV: ()
#
#   MakeMaker Parameters:

#     ABSTRACT => q[Tapper - Database schemas for Tapper]
#     AUTHOR => q[AMD OSRC Tapper Team <tapper@amd64.org>]
#     DIR => []
#     DISTNAME => q[Tapper-Schema]
#     NAME => q[Tapper::Schema]
#     NO_META => q[1]
#     PL_FILES => {  }
#     PREREQ_PM => { DateTime::Format::MySQL=>q[0], Scalar::Util=>q[0], Tapper::Test=>q[3.000002], DateTime::Format::Strptime=>q[0], DateTime::Format::Builder=>q[0], Test::Perl::Critic=>q[0], DBIx::Class::Schema::Versioned=>q[0], DBIx::Class=>q[0.08127], Test::Fixture::DBIC::Schema=>q[0.03], SQL::Translator=>q[0], TAP::DOM=>q[0.10], ExtUtils::MakeMaker=>q[6.42], DBIx::Class::TimeStamp=>q[0.12], YAML::Syck=>q[1.17], DateTime::Format::SQLite=>q[0], Test::More=>q[0], Tapper::Config=>q[3.000002], DBIx::Class::InflateColumn::Object::Enum=>q[0], common::sense=>q[0], Tapper::TAP::Harness=>q[2.010040] }
#     VERSION => q[3.000004]
#     dist => { PREOP=>q[$(PERL) -I. "-MModule::Install::Admin" -e "dist_preop(q($(DISTVNAME)))"] }
#     realclean => { FILES=>q[MYMETA.yml] }

# --- MakeMaker post_initialize section:


# --- MakeMaker const_config section:

# These definitions are from config.sh (via /2home/ss5/perl510/lib/5.10.0/x86_64-linux/Config.pm).
# They may have been overridden via Makefile.PL or on the command line.
AR = ar
CC = gcc
CCCDLFLAGS = -fPIC
CCDLFLAGS = -Wl,-E
DLEXT = so
DLSRC = dl_dlopen.xs
EXE_EXT = 
FULL_AR = /usr/bin/ar
LD = gcc
LDDLFLAGS = -shared -O2 -L/usr/local/lib
LDFLAGS =  -L/usr/local/lib
LIBC = /lib/libc-2.6.1.so
LIB_EXT = .a
OBJ_EXT = .o
OSNAME = linux
OSVERS = 2.6.22-14-generic
RANLIB = :
SITELIBEXP = /2home/ss5/perl510/lib/site_perl/5.10.0
SITEARCHEXP = /2home/ss5/perl510/lib/site_perl/5.10.0/x86_64-linux
SO = so
VENDORARCHEXP = 
VENDORLIBEXP = 


# --- MakeMaker constants section:
AR_STATIC_ARGS = cr
DIRFILESEP = /
DFSEP = $(DIRFILESEP)
NAME = Tapper::Schema
NAME_SYM = Tapper_Schema
VERSION = 3.000004
VERSION_MACRO = VERSION
VERSION_SYM = 3_000004
DEFINE_VERSION = -D$(VERSION_MACRO)=\"$(VERSION)\"
XS_VERSION = 3.000004
XS_VERSION_MACRO = XS_VERSION
XS_DEFINE_VERSION = -D$(XS_VERSION_MACRO)=\"$(XS_VERSION)\"
INST_ARCHLIB = blib/arch
INST_SCRIPT = blib/script
INST_BIN = blib/bin
INST_LIB = blib/lib
INST_MAN1DIR = blib/man1
INST_MAN3DIR = blib/man3
MAN1EXT = 1
MAN3EXT = 3
INSTALLDIRS = site
DESTDIR = 
PREFIX = $(SITEPREFIX)
PERLPREFIX = /2home/ss5/perl510/bin/..
SITEPREFIX = /2home/ss5/perl510/bin/..
VENDORPREFIX = 
INSTALLPRIVLIB = /2home/ss5/perl510/lib/5.10.0
DESTINSTALLPRIVLIB = $(DESTDIR)$(INSTALLPRIVLIB)
INSTALLSITELIB = /2home/ss5/perl510/lib/site_perl/5.10.0
DESTINSTALLSITELIB = $(DESTDIR)$(INSTALLSITELIB)
INSTALLVENDORLIB = 
DESTINSTALLVENDORLIB = $(DESTDIR)$(INSTALLVENDORLIB)
INSTALLARCHLIB = /2home/ss5/perl510/lib/5.10.0/x86_64-linux
DESTINSTALLARCHLIB = $(DESTDIR)$(INSTALLARCHLIB)
INSTALLSITEARCH = /2home/ss5/perl510/lib/site_perl/5.10.0/x86_64-linux
DESTINSTALLSITEARCH = $(DESTDIR)$(INSTALLSITEARCH)
INSTALLVENDORARCH = 
DESTINSTALLVENDORARCH = $(DESTDIR)$(INSTALLVENDORARCH)
INSTALLBIN = /2home/ss5/perl510/bin
DESTINSTALLBIN = $(DESTDIR)$(INSTALLBIN)
INSTALLSITEBIN = /2home/ss5/perl510/bin
DESTINSTALLSITEBIN = $(DESTDIR)$(INSTALLSITEBIN)
INSTALLVENDORBIN = 
DESTINSTALLVENDORBIN = $(DESTDIR)$(INSTALLVENDORBIN)
INSTALLSCRIPT = /2home/ss5/perl510/bin/
DESTINSTALLSCRIPT = $(DESTDIR)$(INSTALLSCRIPT)
INSTALLSITESCRIPT = /2home/ss5/perl510/bin
DESTINSTALLSITESCRIPT = $(DESTDIR)$(INSTALLSITESCRIPT)
INSTALLVENDORSCRIPT = 
DESTINSTALLVENDORSCRIPT = $(DESTDIR)$(INSTALLVENDORSCRIPT)
INSTALLMAN1DIR = /2home/ss5/perl510/man/man1
DESTINSTALLMAN1DIR = $(DESTDIR)$(INSTALLMAN1DIR)
INSTALLSITEMAN1DIR = /2home/ss5/perl510/man/man1
DESTINSTALLSITEMAN1DIR = $(DESTDIR)$(INSTALLSITEMAN1DIR)
INSTALLVENDORMAN1DIR = 
DESTINSTALLVENDORMAN1DIR = $(DESTDIR)$(INSTALLVENDORMAN1DIR)
INSTALLMAN3DIR = /2home/ss5/perl510/man/man3
DESTINSTALLMAN3DIR = $(DESTDIR)$(INSTALLMAN3DIR)
INSTALLSITEMAN3DIR = /2home/ss5/perl510/man/man3
DESTINSTALLSITEMAN3DIR = $(DESTDIR)$(INSTALLSITEMAN3DIR)
INSTALLVENDORMAN3DIR = 
DESTINSTALLVENDORMAN3DIR = $(DESTDIR)$(INSTALLVENDORMAN3DIR)
PERL_LIB =
PERL_ARCHLIB = /2home/ss5/perl510/lib/5.10.0/x86_64-linux
LIBPERL_A = libperl.a
FIRST_MAKEFILE = Makefile
MAKEFILE_OLD = Makefile.old
MAKE_APERL_FILE = Makefile.aperl
PERLMAINCC = $(CC)
PERL_INC = /2home/ss5/perl510/lib/5.10.0/x86_64-linux/CORE
PERL = /2home/ss5/perl510/bin/perl "-Iinc"
FULLPERL = /2home/ss5/perl510/bin/perl "-Iinc"
ABSPERL = $(PERL)
PERLRUN = $(PERL)
FULLPERLRUN = $(FULLPERL)
ABSPERLRUN = $(ABSPERL)
PERLRUNINST = $(PERLRUN) "-I$(INST_ARCHLIB)" "-Iinc" "-I$(INST_LIB)"
FULLPERLRUNINST = $(FULLPERLRUN) "-I$(INST_ARCHLIB)" "-Iinc" "-I$(INST_LIB)"
ABSPERLRUNINST = $(ABSPERLRUN) "-I$(INST_ARCHLIB)" "-Iinc" "-I$(INST_LIB)"
PERL_CORE = 0
PERM_RW = 644
PERM_RWX = 755

MAKEMAKER   = /2home/ss5/perl510/lib/5.10.0/ExtUtils/MakeMaker.pm
MM_VERSION  = 6.48
MM_REVISION = 64800

# FULLEXT = Pathname for extension directory (eg Foo/Bar/Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT. (eg Oracle)
# PARENT_NAME = NAME without BASEEXT and no trailing :: (eg Foo::Bar)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
MAKE = make
FULLEXT = Tapper/Schema
BASEEXT = Schema
PARENT_NAME = Tapper
DLBASE = $(BASEEXT)
VERSION_FROM = 
OBJECT = 
LDFROM = $(OBJECT)
LINKTYPE = dynamic
BOOTDEP = 

# Handy lists of source code files:
XS_FILES = 
C_FILES  = 
O_FILES  = 
H_FILES  = 
MAN1PODS = 
MAN3PODS = lib/Tapper/Schema.pm \
	lib/Tapper/Schema/ReportsDB/Result/Report.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportComment.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportFile.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportSection.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportTopic.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportgroupArbitrary.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportgroupTestrun.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportgroupTestrunStats.pm \
	lib/Tapper/Schema/ReportsDB/Result/Suite.pm \
	lib/Tapper/Schema/ReportsDB/Result/User.pm \
	lib/Tapper/Schema/TestrunDB.pm \
	lib/Tapper/Schema/TestrunDB/Result/Host.pm \
	lib/Tapper/Schema/TestrunDB/Result/HostFeature.pm \
	lib/Tapper/Schema/TestrunDB/Result/Message.pm \
	lib/Tapper/Schema/TestrunDB/Result/PrePrecondition.pm \
	lib/Tapper/Schema/TestrunDB/Result/Precondition.pm \
	lib/Tapper/Schema/TestrunDB/Result/Preconditiontype.pm \
	lib/Tapper/Schema/TestrunDB/Result/Queue.pm \
	lib/Tapper/Schema/TestrunDB/Result/QueueHost.pm \
	lib/Tapper/Schema/TestrunDB/Result/Scenario.pm \
	lib/Tapper/Schema/TestrunDB/Result/ScenarioElement.pm \
	lib/Tapper/Schema/TestrunDB/Result/State.pm \
	lib/Tapper/Schema/TestrunDB/Result/TestplanInstance.pm \
	lib/Tapper/Schema/TestrunDB/Result/Testrun.pm \
	lib/Tapper/Schema/TestrunDB/Result/TestrunPrecondition.pm \
	lib/Tapper/Schema/TestrunDB/Result/TestrunRequestedFeature.pm \
	lib/Tapper/Schema/TestrunDB/Result/TestrunRequestedHost.pm \
	lib/Tapper/Schema/TestrunDB/Result/TestrunScheduling.pm \
	lib/Tapper/Schema/TestrunDB/Result/Topic.pm \
	lib/Tapper/Schema/TestrunDB/Result/User.pm \
	lib/Tapper/Schema/TestrunDB/ResultSet/TestrunScheduling.pm

# Where is the Config information that we are using/depend on
CONFIGDEP = $(PERL_ARCHLIB)$(DFSEP)Config.pm $(PERL_INC)$(DFSEP)config.h

# Where to build things
INST_LIBDIR      = $(INST_LIB)/Tapper
INST_ARCHLIBDIR  = $(INST_ARCHLIB)/Tapper

INST_AUTODIR     = $(INST_LIB)/auto/$(FULLEXT)
INST_ARCHAUTODIR = $(INST_ARCHLIB)/auto/$(FULLEXT)

INST_STATIC      = 
INST_DYNAMIC     = 
INST_BOOT        = 

# Extra linker info
EXPORT_LIST        = 
PERL_ARCHIVE       = 
PERL_ARCHIVE_AFTER = 


TO_INST_PM = lib/Tapper/Schema.pm \
	lib/Tapper/Schema/ReportsDB.pm \
	lib/Tapper/Schema/ReportsDB/Result/Report.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportComment.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportFile.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportSection.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportTopic.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportgroupArbitrary.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportgroupTestrun.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportgroupTestrunStats.pm \
	lib/Tapper/Schema/ReportsDB/Result/Suite.pm \
	lib/Tapper/Schema/ReportsDB/Result/Tap.pm \
	lib/Tapper/Schema/ReportsDB/Result/User.pm \
	lib/Tapper/Schema/ReportsDB/Result/View010TestrunOverviewReports.pm \
	lib/Tapper/Schema/ReportsDB/Result/View020TestrunOverview.pm \
	lib/Tapper/Schema/ReportsDB/ResultSet/ReportgroupTestrun.pm \
	lib/Tapper/Schema/TestTools.pm \
	lib/Tapper/Schema/TestrunDB.pm \
	lib/Tapper/Schema/TestrunDB/Result/Host.pm \
	lib/Tapper/Schema/TestrunDB/Result/HostFeature.pm \
	lib/Tapper/Schema/TestrunDB/Result/Message.pm \
	lib/Tapper/Schema/TestrunDB/Result/PrePrecondition.pm \
	lib/Tapper/Schema/TestrunDB/Result/Precondition.pm \
	lib/Tapper/Schema/TestrunDB/Result/Preconditiontype.pm \
	lib/Tapper/Schema/TestrunDB/Result/Queue.pm \
	lib/Tapper/Schema/TestrunDB/Result/QueueHost.pm \
	lib/Tapper/Schema/TestrunDB/Result/Scenario.pm \
	lib/Tapper/Schema/TestrunDB/Result/ScenarioElement.pm \
	lib/Tapper/Schema/TestrunDB/Result/State.pm \
	lib/Tapper/Schema/TestrunDB/Result/TestplanInstance.pm \
	lib/Tapper/Schema/TestrunDB/Result/Testrun.pm \
	lib/Tapper/Schema/TestrunDB/Result/TestrunPrecondition.pm \
	lib/Tapper/Schema/TestrunDB/Result/TestrunRequestedFeature.pm \
	lib/Tapper/Schema/TestrunDB/Result/TestrunRequestedHost.pm \
	lib/Tapper/Schema/TestrunDB/Result/TestrunScheduling.pm \
	lib/Tapper/Schema/TestrunDB/Result/Topic.pm \
	lib/Tapper/Schema/TestrunDB/Result/User.pm \
	lib/Tapper/Schema/TestrunDB/ResultSet/Host.pm \
	lib/Tapper/Schema/TestrunDB/ResultSet/Precondition.pm \
	lib/Tapper/Schema/TestrunDB/ResultSet/Queue.pm \
	lib/Tapper/Schema/TestrunDB/ResultSet/Testrun.pm \
	lib/Tapper/Schema/TestrunDB/ResultSet/TestrunScheduling.pm

PM_TO_BLIB = lib/Tapper/Schema/ReportsDB/Result/ReportgroupArbitrary.pm \
	blib/lib/Tapper/Schema/ReportsDB/Result/ReportgroupArbitrary.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportgroupTestrun.pm \
	blib/lib/Tapper/Schema/ReportsDB/Result/ReportgroupTestrun.pm \
	lib/Tapper/Schema/TestTools.pm \
	blib/lib/Tapper/Schema/TestTools.pm \
	lib/Tapper/Schema/TestrunDB/ResultSet/Host.pm \
	blib/lib/Tapper/Schema/TestrunDB/ResultSet/Host.pm \
	lib/Tapper/Schema/TestrunDB/Result/Testrun.pm \
	blib/lib/Tapper/Schema/TestrunDB/Result/Testrun.pm \
	lib/Tapper/Schema/TestrunDB/Result/PrePrecondition.pm \
	blib/lib/Tapper/Schema/TestrunDB/Result/PrePrecondition.pm \
	lib/Tapper/Schema/TestrunDB/Result/Host.pm \
	blib/lib/Tapper/Schema/TestrunDB/Result/Host.pm \
	lib/Tapper/Schema/ReportsDB/Result/View020TestrunOverview.pm \
	blib/lib/Tapper/Schema/ReportsDB/Result/View020TestrunOverview.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportSection.pm \
	blib/lib/Tapper/Schema/ReportsDB/Result/ReportSection.pm \
	lib/Tapper/Schema/TestrunDB/Result/State.pm \
	blib/lib/Tapper/Schema/TestrunDB/Result/State.pm \
	lib/Tapper/Schema/ReportsDB/ResultSet/ReportgroupTestrun.pm \
	blib/lib/Tapper/Schema/ReportsDB/ResultSet/ReportgroupTestrun.pm \
	lib/Tapper/Schema.pm \
	blib/lib/Tapper/Schema.pm \
	lib/Tapper/Schema/ReportsDB.pm \
	blib/lib/Tapper/Schema/ReportsDB.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportComment.pm \
	blib/lib/Tapper/Schema/ReportsDB/Result/ReportComment.pm \
	lib/Tapper/Schema/TestrunDB/ResultSet/TestrunScheduling.pm \
	blib/lib/Tapper/Schema/TestrunDB/ResultSet/TestrunScheduling.pm \
	lib/Tapper/Schema/TestrunDB/Result/TestplanInstance.pm \
	blib/lib/Tapper/Schema/TestrunDB/Result/TestplanInstance.pm \
	lib/Tapper/Schema/TestrunDB/Result/Preconditiontype.pm \
	blib/lib/Tapper/Schema/TestrunDB/Result/Preconditiontype.pm \
	lib/Tapper/Schema/TestrunDB/Result/User.pm \
	blib/lib/Tapper/Schema/TestrunDB/Result/User.pm \
	lib/Tapper/Schema/TestrunDB/Result/TestrunScheduling.pm \
	blib/lib/Tapper/Schema/TestrunDB/Result/TestrunScheduling.pm \
	lib/Tapper/Schema/TestrunDB/ResultSet/Queue.pm \
	blib/lib/Tapper/Schema/TestrunDB/ResultSet/Queue.pm \
	lib/Tapper/Schema/TestrunDB/Result/Scenario.pm \
	blib/lib/Tapper/Schema/TestrunDB/Result/Scenario.pm \
	lib/Tapper/Schema/TestrunDB/Result/TestrunPrecondition.pm \
	blib/lib/Tapper/Schema/TestrunDB/Result/TestrunPrecondition.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportgroupTestrunStats.pm \
	blib/lib/Tapper/Schema/ReportsDB/Result/ReportgroupTestrunStats.pm \
	lib/Tapper/Schema/TestrunDB/Result/TestrunRequestedFeature.pm \
	blib/lib/Tapper/Schema/TestrunDB/Result/TestrunRequestedFeature.pm \
	lib/Tapper/Schema/TestrunDB/Result/HostFeature.pm \
	blib/lib/Tapper/Schema/TestrunDB/Result/HostFeature.pm \
	lib/Tapper/Schema/TestrunDB/Result/Queue.pm \
	blib/lib/Tapper/Schema/TestrunDB/Result/Queue.pm \
	lib/Tapper/Schema/ReportsDB/Result/Tap.pm \
	blib/lib/Tapper/Schema/ReportsDB/Result/Tap.pm \
	lib/Tapper/Schema/TestrunDB/Result/Message.pm \
	blib/lib/Tapper/Schema/TestrunDB/Result/Message.pm \
	lib/Tapper/Schema/TestrunDB/Result/Topic.pm \
	blib/lib/Tapper/Schema/TestrunDB/Result/Topic.pm \
	lib/Tapper/Schema/ReportsDB/Result/View010TestrunOverviewReports.pm \
	blib/lib/Tapper/Schema/ReportsDB/Result/View010TestrunOverviewReports.pm \
	lib/Tapper/Schema/TestrunDB/Result/QueueHost.pm \
	blib/lib/Tapper/Schema/TestrunDB/Result/QueueHost.pm \
	lib/Tapper/Schema/ReportsDB/Result/User.pm \
	blib/lib/Tapper/Schema/ReportsDB/Result/User.pm \
	lib/Tapper/Schema/ReportsDB/Result/Report.pm \
	blib/lib/Tapper/Schema/ReportsDB/Result/Report.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportTopic.pm \
	blib/lib/Tapper/Schema/ReportsDB/Result/ReportTopic.pm \
	lib/Tapper/Schema/TestrunDB.pm \
	blib/lib/Tapper/Schema/TestrunDB.pm \
	lib/Tapper/Schema/TestrunDB/Result/TestrunRequestedHost.pm \
	blib/lib/Tapper/Schema/TestrunDB/Result/TestrunRequestedHost.pm \
	lib/Tapper/Schema/TestrunDB/ResultSet/Testrun.pm \
	blib/lib/Tapper/Schema/TestrunDB/ResultSet/Testrun.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportFile.pm \
	blib/lib/Tapper/Schema/ReportsDB/Result/ReportFile.pm \
	lib/Tapper/Schema/TestrunDB/Result/Precondition.pm \
	blib/lib/Tapper/Schema/TestrunDB/Result/Precondition.pm \
	lib/Tapper/Schema/TestrunDB/Result/ScenarioElement.pm \
	blib/lib/Tapper/Schema/TestrunDB/Result/ScenarioElement.pm \
	lib/Tapper/Schema/ReportsDB/Result/Suite.pm \
	blib/lib/Tapper/Schema/ReportsDB/Result/Suite.pm \
	lib/Tapper/Schema/TestrunDB/ResultSet/Precondition.pm \
	blib/lib/Tapper/Schema/TestrunDB/ResultSet/Precondition.pm


# --- MakeMaker platform_constants section:
MM_Unix_VERSION = 6.48
PERL_MALLOC_DEF = -DPERL_EXTMALLOC_DEF -Dmalloc=Perl_malloc -Dfree=Perl_mfree -Drealloc=Perl_realloc -Dcalloc=Perl_calloc


# --- MakeMaker tool_autosplit section:
# Usage: $(AUTOSPLITFILE) FileToSplit AutoDirToSplitInto
AUTOSPLITFILE = $(ABSPERLRUN)  -e 'use AutoSplit;  autosplit($$ARGV[0], $$ARGV[1], 0, 1, 1)' --



# --- MakeMaker tool_xsubpp section:


# --- MakeMaker tools_other section:
SHELL = /bin/sh
CHMOD = chmod
CP = cp
MV = mv
NOOP = $(SHELL) -c true
NOECHO = @
RM_F = rm -f
RM_RF = rm -rf
TEST_F = test -f
TOUCH = touch
UMASK_NULL = umask 0
DEV_NULL = > /dev/null 2>&1
MKPATH = $(ABSPERLRUN) "-MExtUtils::Command" -e mkpath
EQUALIZE_TIMESTAMP = $(ABSPERLRUN) "-MExtUtils::Command" -e eqtime
ECHO = echo
ECHO_N = echo -n
UNINST = 0
VERBINST = 0
MOD_INSTALL = $(ABSPERLRUN) -MExtUtils::Install -e 'install({@ARGV}, '\''$(VERBINST)'\'', 0, '\''$(UNINST)'\'');' --
DOC_INSTALL = $(ABSPERLRUN) "-MExtUtils::Command::MM" -e perllocal_install
UNINSTALL = $(ABSPERLRUN) "-MExtUtils::Command::MM" -e uninstall
WARN_IF_OLD_PACKLIST = $(ABSPERLRUN) "-MExtUtils::Command::MM" -e warn_if_old_packlist
MACROSTART = 
MACROEND = 
USEMAKEFILE = -f
FIXIN = $(PERLRUN) "-MExtUtils::MY" -e "MY->fixin(shift)"


# --- MakeMaker makemakerdflt section:
makemakerdflt : all
	$(NOECHO) $(NOOP)


# --- MakeMaker dist section:
TAR = tar
TARFLAGS = cvf
ZIP = zip
ZIPFLAGS = -r
COMPRESS = gzip --best
SUFFIX = .gz
SHAR = shar
PREOP = $(PERL) -I. "-MModule::Install::Admin" -e "dist_preop(q($(DISTVNAME)))"
POSTOP = $(NOECHO) $(NOOP)
TO_UNIX = $(NOECHO) $(NOOP)
CI = ci -u
RCS_LABEL = rcs -Nv$(VERSION_SYM): -q
DIST_CP = best
DIST_DEFAULT = tardist
DISTNAME = Tapper-Schema
DISTVNAME = Tapper-Schema-3.000004


# --- MakeMaker macro section:


# --- MakeMaker depend section:


# --- MakeMaker cflags section:


# --- MakeMaker const_loadlibs section:


# --- MakeMaker const_cccmd section:


# --- MakeMaker post_constants section:


# --- MakeMaker pasthru section:

PASTHRU = LIBPERL_A="$(LIBPERL_A)"\
	LINKTYPE="$(LINKTYPE)"\
	PREFIX="$(PREFIX)"


# --- MakeMaker special_targets section:
.SUFFIXES : .xs .c .C .cpp .i .s .cxx .cc $(OBJ_EXT)

.PHONY: all config static dynamic test linkext manifest blibdirs clean realclean disttest distdir



# --- MakeMaker c_o section:


# --- MakeMaker xs_c section:


# --- MakeMaker xs_o section:


# --- MakeMaker top_targets section:
all :: pure_all manifypods
	$(NOECHO) $(NOOP)


pure_all :: config pm_to_blib subdirs linkext
	$(NOECHO) $(NOOP)

subdirs :: $(MYEXTLIB)
	$(NOECHO) $(NOOP)

config :: $(FIRST_MAKEFILE) blibdirs
	$(NOECHO) $(NOOP)

help :
	perldoc ExtUtils::MakeMaker


# --- MakeMaker blibdirs section:
blibdirs : $(INST_LIBDIR)$(DFSEP).exists $(INST_ARCHLIB)$(DFSEP).exists $(INST_AUTODIR)$(DFSEP).exists $(INST_ARCHAUTODIR)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists $(INST_SCRIPT)$(DFSEP).exists $(INST_MAN1DIR)$(DFSEP).exists $(INST_MAN3DIR)$(DFSEP).exists
	$(NOECHO) $(NOOP)

# Backwards compat with 6.18 through 6.25
blibdirs.ts : blibdirs
	$(NOECHO) $(NOOP)

$(INST_LIBDIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_LIBDIR)
	$(NOECHO) $(CHMOD) 755 $(INST_LIBDIR)
	$(NOECHO) $(TOUCH) $(INST_LIBDIR)$(DFSEP).exists

$(INST_ARCHLIB)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHLIB)
	$(NOECHO) $(CHMOD) 755 $(INST_ARCHLIB)
	$(NOECHO) $(TOUCH) $(INST_ARCHLIB)$(DFSEP).exists

$(INST_AUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_AUTODIR)
	$(NOECHO) $(CHMOD) 755 $(INST_AUTODIR)
	$(NOECHO) $(TOUCH) $(INST_AUTODIR)$(DFSEP).exists

$(INST_ARCHAUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHAUTODIR)
	$(NOECHO) $(CHMOD) 755 $(INST_ARCHAUTODIR)
	$(NOECHO) $(TOUCH) $(INST_ARCHAUTODIR)$(DFSEP).exists

$(INST_BIN)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_BIN)
	$(NOECHO) $(CHMOD) 755 $(INST_BIN)
	$(NOECHO) $(TOUCH) $(INST_BIN)$(DFSEP).exists

$(INST_SCRIPT)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_SCRIPT)
	$(NOECHO) $(CHMOD) 755 $(INST_SCRIPT)
	$(NOECHO) $(TOUCH) $(INST_SCRIPT)$(DFSEP).exists

$(INST_MAN1DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN1DIR)
	$(NOECHO) $(CHMOD) 755 $(INST_MAN1DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN1DIR)$(DFSEP).exists

$(INST_MAN3DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN3DIR)
	$(NOECHO) $(CHMOD) 755 $(INST_MAN3DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN3DIR)$(DFSEP).exists



# --- MakeMaker linkext section:

linkext :: $(LINKTYPE)
	$(NOECHO) $(NOOP)


# --- MakeMaker dlsyms section:


# --- MakeMaker dynamic section:

dynamic :: $(FIRST_MAKEFILE) $(INST_DYNAMIC) $(INST_BOOT)
	$(NOECHO) $(NOOP)


# --- MakeMaker dynamic_bs section:

BOOTSTRAP =


# --- MakeMaker dynamic_lib section:


# --- MakeMaker static section:

## $(INST_PM) has been moved to the all: target.
## It remains here for awhile to allow for old usage: "make static"
static :: $(FIRST_MAKEFILE) $(INST_STATIC)
	$(NOECHO) $(NOOP)


# --- MakeMaker static_lib section:


# --- MakeMaker manifypods section:

POD2MAN_EXE = $(PERLRUN) "-MExtUtils::Command::MM" -e pod2man "--"
POD2MAN = $(POD2MAN_EXE)


manifypods : pure_all  \
	lib/Tapper/Schema/ReportsDB/Result/ReportgroupArbitrary.pm \
	lib/Tapper/Schema/TestrunDB/Result/HostFeature.pm \
	lib/Tapper/Schema/TestrunDB/Result/Queue.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportgroupTestrun.pm \
	lib/Tapper/Schema/TestrunDB/Result/Message.pm \
	lib/Tapper/Schema/TestrunDB/Result/Topic.pm \
	lib/Tapper/Schema/TestrunDB/Result/QueueHost.pm \
	lib/Tapper/Schema/TestrunDB/Result/Testrun.pm \
	lib/Tapper/Schema/TestrunDB/Result/PrePrecondition.pm \
	lib/Tapper/Schema/TestrunDB/Result/Host.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportSection.pm \
	lib/Tapper/Schema/ReportsDB/Result/User.pm \
	lib/Tapper/Schema/ReportsDB/Result/Report.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportTopic.pm \
	lib/Tapper/Schema/TestrunDB/Result/State.pm \
	lib/Tapper/Schema.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportComment.pm \
	lib/Tapper/Schema/TestrunDB/Result/TestrunRequestedHost.pm \
	lib/Tapper/Schema/TestrunDB.pm \
	lib/Tapper/Schema/TestrunDB/Result/TestplanInstance.pm \
	lib/Tapper/Schema/TestrunDB/ResultSet/TestrunScheduling.pm \
	lib/Tapper/Schema/TestrunDB/Result/Preconditiontype.pm \
	lib/Tapper/Schema/TestrunDB/Result/User.pm \
	lib/Tapper/Schema/TestrunDB/Result/TestrunScheduling.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportFile.pm \
	lib/Tapper/Schema/TestrunDB/Result/Precondition.pm \
	lib/Tapper/Schema/TestrunDB/Result/Scenario.pm \
	lib/Tapper/Schema/TestrunDB/Result/ScenarioElement.pm \
	lib/Tapper/Schema/TestrunDB/Result/TestrunPrecondition.pm \
	lib/Tapper/Schema/ReportsDB/Result/ReportgroupTestrunStats.pm \
	lib/Tapper/Schema/ReportsDB/Result/Suite.pm \
	lib/Tapper/Schema/TestrunDB/Result/TestrunRequestedFeature.pm
	$(NOECHO) $(POD2MAN) --section=3 --perm_rw=$(PERM_RW) \
	  lib/Tapper/Schema/ReportsDB/Result/ReportgroupArbitrary.pm $(INST_MAN3DIR)/Tapper::Schema::ReportsDB::Result::ReportgroupArbitrary.$(MAN3EXT) \
	  lib/Tapper/Schema/TestrunDB/Result/HostFeature.pm $(INST_MAN3DIR)/Tapper::Schema::TestrunDB::Result::HostFeature.$(MAN3EXT) \
	  lib/Tapper/Schema/TestrunDB/Result/Queue.pm $(INST_MAN3DIR)/Tapper::Schema::TestrunDB::Result::Queue.$(MAN3EXT) \
	  lib/Tapper/Schema/ReportsDB/Result/ReportgroupTestrun.pm $(INST_MAN3DIR)/Tapper::Schema::ReportsDB::Result::ReportgroupTestrun.$(MAN3EXT) \
	  lib/Tapper/Schema/TestrunDB/Result/Message.pm $(INST_MAN3DIR)/Tapper::Schema::TestrunDB::Result::Message.$(MAN3EXT) \
	  lib/Tapper/Schema/TestrunDB/Result/Topic.pm $(INST_MAN3DIR)/Tapper::Schema::TestrunDB::Result::Topic.$(MAN3EXT) \
	  lib/Tapper/Schema/TestrunDB/Result/QueueHost.pm $(INST_MAN3DIR)/Tapper::Schema::TestrunDB::Result::QueueHost.$(MAN3EXT) \
	  lib/Tapper/Schema/TestrunDB/Result/Testrun.pm $(INST_MAN3DIR)/Tapper::Schema::TestrunDB::Result::Testrun.$(MAN3EXT) \
	  lib/Tapper/Schema/TestrunDB/Result/PrePrecondition.pm $(INST_MAN3DIR)/Tapper::Schema::TestrunDB::Result::PrePrecondition.$(MAN3EXT) \
	  lib/Tapper/Schema/TestrunDB/Result/Host.pm $(INST_MAN3DIR)/Tapper::Schema::TestrunDB::Result::Host.$(MAN3EXT) \
	  lib/Tapper/Schema/ReportsDB/Result/ReportSection.pm $(INST_MAN3DIR)/Tapper::Schema::ReportsDB::Result::ReportSection.$(MAN3EXT) \
	  lib/Tapper/Schema/ReportsDB/Result/User.pm $(INST_MAN3DIR)/Tapper::Schema::ReportsDB::Result::User.$(MAN3EXT) \
	  lib/Tapper/Schema/ReportsDB/Result/Report.pm $(INST_MAN3DIR)/Tapper::Schema::ReportsDB::Result::Report.$(MAN3EXT) \
	  lib/Tapper/Schema/ReportsDB/Result/ReportTopic.pm $(INST_MAN3DIR)/Tapper::Schema::ReportsDB::Result::ReportTopic.$(MAN3EXT) \
	  lib/Tapper/Schema/TestrunDB/Result/State.pm $(INST_MAN3DIR)/Tapper::Schema::TestrunDB::Result::State.$(MAN3EXT) \
	  lib/Tapper/Schema.pm $(INST_MAN3DIR)/Tapper::Schema.$(MAN3EXT) \
	  lib/Tapper/Schema/ReportsDB/Result/ReportComment.pm $(INST_MAN3DIR)/Tapper::Schema::ReportsDB::Result::ReportComment.$(MAN3EXT) \
	  lib/Tapper/Schema/TestrunDB/Result/TestrunRequestedHost.pm $(INST_MAN3DIR)/Tapper::Schema::TestrunDB::Result::TestrunRequestedHost.$(MAN3EXT) \
	  lib/Tapper/Schema/TestrunDB.pm $(INST_MAN3DIR)/Tapper::Schema::TestrunDB.$(MAN3EXT) \
	  lib/Tapper/Schema/TestrunDB/Result/TestplanInstance.pm $(INST_MAN3DIR)/Tapper::Schema::TestrunDB::Result::TestplanInstance.$(MAN3EXT) \
	  lib/Tapper/Schema/TestrunDB/ResultSet/TestrunScheduling.pm $(INST_MAN3DIR)/Tapper::Schema::TestrunDB::ResultSet::TestrunScheduling.$(MAN3EXT) \
	  lib/Tapper/Schema/TestrunDB/Result/Preconditiontype.pm $(INST_MAN3DIR)/Tapper::Schema::TestrunDB::Result::Preconditiontype.$(MAN3EXT) \
	  lib/Tapper/Schema/TestrunDB/Result/User.pm $(INST_MAN3DIR)/Tapper::Schema::TestrunDB::Result::User.$(MAN3EXT) \
	  lib/Tapper/Schema/TestrunDB/Result/TestrunScheduling.pm $(INST_MAN3DIR)/Tapper::Schema::TestrunDB::Result::TestrunScheduling.$(MAN3EXT) \
	  lib/Tapper/Schema/ReportsDB/Result/ReportFile.pm $(INST_MAN3DIR)/Tapper::Schema::ReportsDB::Result::ReportFile.$(MAN3EXT) \
	  lib/Tapper/Schema/TestrunDB/Result/Precondition.pm $(INST_MAN3DIR)/Tapper::Schema::TestrunDB::Result::Precondition.$(MAN3EXT) \
	  lib/Tapper/Schema/TestrunDB/Result/Scenario.pm $(INST_MAN3DIR)/Tapper::Schema::TestrunDB::Result::Scenario.$(MAN3EXT) \
	  lib/Tapper/Schema/TestrunDB/Result/ScenarioElement.pm $(INST_MAN3DIR)/Tapper::Schema::TestrunDB::Result::ScenarioElement.$(MAN3EXT) \
	  lib/Tapper/Schema/TestrunDB/Result/TestrunPrecondition.pm $(INST_MAN3DIR)/Tapper::Schema::TestrunDB::Result::TestrunPrecondition.$(MAN3EXT) \
	  lib/Tapper/Schema/ReportsDB/Result/ReportgroupTestrunStats.pm $(INST_MAN3DIR)/Tapper::Schema::ReportsDB::Result::ReportgroupTestrunStats.$(MAN3EXT) \
	  lib/Tapper/Schema/ReportsDB/Result/Suite.pm $(INST_MAN3DIR)/Tapper::Schema::ReportsDB::Result::Suite.$(MAN3EXT) \
	  lib/Tapper/Schema/TestrunDB/Result/TestrunRequestedFeature.pm $(INST_MAN3DIR)/Tapper::Schema::TestrunDB::Result::TestrunRequestedFeature.$(MAN3EXT) 




# --- MakeMaker processPL section:


# --- MakeMaker installbin section:


# --- MakeMaker subdirs section:

# none

# --- MakeMaker clean_subdirs section:
clean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean :: clean_subdirs
	- $(RM_F) \
	  *$(LIB_EXT) core \
	  core.[0-9] $(INST_ARCHAUTODIR)/extralibs.all \
	  core.[0-9][0-9] $(BASEEXT).bso \
	  pm_to_blib.ts core.[0-9][0-9][0-9][0-9] \
	  $(BASEEXT).x $(BOOTSTRAP) \
	  perl$(EXE_EXT) tmon.out \
	  *$(OBJ_EXT) pm_to_blib \
	  $(INST_ARCHAUTODIR)/extralibs.ld blibdirs.ts \
	  core.[0-9][0-9][0-9][0-9][0-9] *perl.core \
	  core.*perl.*.? $(MAKE_APERL_FILE) \
	  perl $(BASEEXT).def \
	  core.[0-9][0-9][0-9] mon.out \
	  lib$(BASEEXT).def perlmain.c \
	  perl.exe so_locations \
	  $(BASEEXT).exp 
	- $(RM_RF) \
	  blib 
	- $(MV) $(FIRST_MAKEFILE) $(MAKEFILE_OLD) $(DEV_NULL)


# --- MakeMaker realclean_subdirs section:
realclean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker realclean section:
# Delete temporary files (via clean) and also delete dist files
realclean purge ::  clean realclean_subdirs
	- $(RM_F) \
	  $(MAKEFILE_OLD) $(FIRST_MAKEFILE) 
	- $(RM_RF) \
	  MYMETA.yml $(DISTVNAME) 


# --- MakeMaker metafile section:
metafile :
	$(NOECHO) $(NOOP)


# --- MakeMaker signature section:
signature :
	cpansign -s


# --- MakeMaker dist_basics section:
distclean :: realclean distcheck
	$(NOECHO) $(NOOP)

distcheck :
	$(PERLRUN) "-MExtUtils::Manifest=fullcheck" -e fullcheck

skipcheck :
	$(PERLRUN) "-MExtUtils::Manifest=skipcheck" -e skipcheck

manifest :
	$(PERLRUN) "-MExtUtils::Manifest=mkmanifest" -e mkmanifest

veryclean : realclean
	$(RM_F) *~ */*~ *.orig */*.orig *.bak */*.bak *.old */*.old 



# --- MakeMaker dist_core section:

dist : $(DIST_DEFAULT) $(FIRST_MAKEFILE)
	$(NOECHO) $(ABSPERLRUN) -l -e 'print '\''Warning: Makefile possibly out of date with $(VERSION_FROM)'\''' \
	  -e '    if -e '\''$(VERSION_FROM)'\'' and -M '\''$(VERSION_FROM)'\'' < -M '\''$(FIRST_MAKEFILE)'\'';' --

tardist : $(DISTVNAME).tar$(SUFFIX)
	$(NOECHO) $(NOOP)

uutardist : $(DISTVNAME).tar$(SUFFIX)
	uuencode $(DISTVNAME).tar$(SUFFIX) $(DISTVNAME).tar$(SUFFIX) > $(DISTVNAME).tar$(SUFFIX)_uu

$(DISTVNAME).tar$(SUFFIX) : distdir
	$(PREOP)
	$(TO_UNIX)
	$(TAR) $(TARFLAGS) $(DISTVNAME).tar $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(COMPRESS) $(DISTVNAME).tar
	$(POSTOP)

zipdist : $(DISTVNAME).zip
	$(NOECHO) $(NOOP)

$(DISTVNAME).zip : distdir
	$(PREOP)
	$(ZIP) $(ZIPFLAGS) $(DISTVNAME).zip $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)

shdist : distdir
	$(PREOP)
	$(SHAR) $(DISTVNAME) > $(DISTVNAME).shar
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)


# --- MakeMaker distdir section:
create_distdir :
	$(RM_RF) $(DISTVNAME)
	$(PERLRUN) "-MExtUtils::Manifest=manicopy,maniread" \
		-e "manicopy(maniread(),'$(DISTVNAME)', '$(DIST_CP)');"

distdir : create_distdir  
	$(NOECHO) $(NOOP)



# --- MakeMaker dist_test section:
disttest : distdir
	cd $(DISTVNAME) && $(ABSPERLRUN) Makefile.PL 
	cd $(DISTVNAME) && $(MAKE) $(PASTHRU)
	cd $(DISTVNAME) && $(MAKE) test $(PASTHRU)



# --- MakeMaker dist_ci section:

ci :
	$(PERLRUN) "-MExtUtils::Manifest=maniread" \
	  -e "@all = keys %{ maniread() };" \
	  -e "print(qq{Executing $(CI) @all\n}); system(qq{$(CI) @all});" \
	  -e "print(qq{Executing $(RCS_LABEL) ...\n}); system(qq{$(RCS_LABEL) @all});"


# --- MakeMaker distmeta section:
distmeta : create_distdir metafile
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'eval { maniadd({q{META.yml} => q{Module meta-data (added by MakeMaker)}}) } ' \
	  -e '    or print "Could not add META.yml to MANIFEST: $${'\''@'\''}\n"' --



# --- MakeMaker distsignature section:
distsignature : create_distdir
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'eval { maniadd({q{SIGNATURE} => q{Public-key signature (added by MakeMaker)}}) } ' \
	  -e '    or print "Could not add SIGNATURE to MANIFEST: $${'\''@'\''}\n"' --
	$(NOECHO) cd $(DISTVNAME) && $(TOUCH) SIGNATURE
	cd $(DISTVNAME) && cpansign -s



# --- MakeMaker install section:

install :: all pure_install doc_install
	$(NOECHO) $(NOOP)

install_perl :: all pure_perl_install doc_perl_install
	$(NOECHO) $(NOOP)

install_site :: all pure_site_install doc_site_install
	$(NOECHO) $(NOOP)

install_vendor :: all pure_vendor_install doc_vendor_install
	$(NOECHO) $(NOOP)

pure_install :: pure_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

doc_install :: doc_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

pure__install : pure_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

doc__install : doc_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

pure_perl_install ::
	$(NOECHO) $(MOD_INSTALL) \
		read $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLARCHLIB)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLPRIVLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLARCHLIB) \
		$(INST_BIN) $(DESTINSTALLBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(SITEARCHEXP)/auto/$(FULLEXT)


pure_site_install ::
	$(NOECHO) $(MOD_INSTALL) \
		read $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLSITEARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLSITELIB) \
		$(INST_ARCHLIB) $(DESTINSTALLSITEARCH) \
		$(INST_BIN) $(DESTINSTALLSITEBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSITESCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLSITEMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLSITEMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(PERL_ARCHLIB)/auto/$(FULLEXT)

pure_vendor_install ::
	$(NOECHO) $(MOD_INSTALL) \
		read $(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLVENDORARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLVENDORLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLVENDORARCH) \
		$(INST_BIN) $(DESTINSTALLVENDORBIN) \
		$(INST_SCRIPT) $(DESTINSTALLVENDORSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLVENDORMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLVENDORMAN3DIR)

doc_perl_install ::
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLPRIVLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod

doc_site_install ::
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLSITELIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod

doc_vendor_install ::
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLVENDORLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod


uninstall :: uninstall_from_$(INSTALLDIRS)dirs
	$(NOECHO) $(NOOP)

uninstall_from_perldirs ::
	$(NOECHO) $(UNINSTALL) $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist

uninstall_from_sitedirs ::
	$(NOECHO) $(UNINSTALL) $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist

uninstall_from_vendordirs ::
	$(NOECHO) $(UNINSTALL) $(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist


# --- MakeMaker force section:
# Phony target to force checking subdirectories.
FORCE :
	$(NOECHO) $(NOOP)


# --- MakeMaker perldepend section:


# --- MakeMaker makefile section:
# We take a very conservative approach here, but it's worth it.
# We move Makefile to Makefile.old here to avoid gnu make looping.
$(FIRST_MAKEFILE) : Makefile.PL $(CONFIGDEP)
	$(NOECHO) $(ECHO) "Makefile out-of-date with respect to $?"
	$(NOECHO) $(ECHO) "Cleaning current config before rebuilding Makefile..."
	-$(NOECHO) $(RM_F) $(MAKEFILE_OLD)
	-$(NOECHO) $(MV)   $(FIRST_MAKEFILE) $(MAKEFILE_OLD)
	- $(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) clean $(DEV_NULL)
	$(PERLRUN) Makefile.PL 
	$(NOECHO) $(ECHO) "==> Your Makefile has been rebuilt. <=="
	$(NOECHO) $(ECHO) "==> Please rerun the $(MAKE) command.  <=="
	false



# --- MakeMaker staticmake section:

# --- MakeMaker makeaperl section ---
MAP_TARGET    = perl
FULLPERL      = /2home/ss5/perl510/bin/perl

$(MAP_TARGET) :: static $(MAKE_APERL_FILE)
	$(MAKE) $(USEMAKEFILE) $(MAKE_APERL_FILE) $@

$(MAKE_APERL_FILE) : $(FIRST_MAKEFILE) pm_to_blib
	$(NOECHO) $(ECHO) Writing \"$(MAKE_APERL_FILE)\" for this $(MAP_TARGET)
	$(NOECHO) $(PERLRUNINST) \
		Makefile.PL DIR= \
		MAKEFILE=$(MAKE_APERL_FILE) LINKTYPE=static \
		MAKEAPERL=1 NORECURS=1 CCCDLFLAGS=


# --- MakeMaker test section:

TEST_VERBOSE=0
TEST_TYPE=test_$(LINKTYPE)
TEST_FILE = test.pl
TEST_FILES = t/*.t
TESTDB_SW = -d

testdb :: testdb_$(LINKTYPE)

test :: $(TEST_TYPE) subdirs-test

subdirs-test ::
	$(NOECHO) $(NOOP)


test_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) "-MExtUtils::Command::MM" "-e" "test_harness($(TEST_VERBOSE), 'inc', '$(INST_LIB)', '$(INST_ARCHLIB)')" $(TEST_FILES)

testdb_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) $(TESTDB_SW) "-Iinc" "-I$(INST_LIB)" "-I$(INST_ARCHLIB)" $(TEST_FILE)

test_ : test_dynamic

test_static :: test_dynamic
testdb_static :: testdb_dynamic


# --- MakeMaker ppd section:
# Creates a PPD (Perl Package Description) for a binary distribution.
ppd :
	$(NOECHO) $(ECHO) '<SOFTPKG NAME="$(DISTNAME)" VERSION="3,000004,0,0">' > $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <TITLE>$(DISTNAME)</TITLE>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <ABSTRACT>Tapper - Database schemas for Tapper</ABSTRACT>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <AUTHOR>AMD OSRC Tapper Team &lt;tapper@amd64.org&gt;</AUTHOR>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <DEPENDENCY NAME="DBIx-Class" VERSION="0,08127,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <DEPENDENCY NAME="DBIx-Class-InflateColumn-Object-Enum" VERSION="0,0,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <DEPENDENCY NAME="DBIx-Class-Schema-Versioned" VERSION="0,0,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <DEPENDENCY NAME="DBIx-Class-TimeStamp" VERSION="0,12,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <DEPENDENCY NAME="DateTime-Format-Builder" VERSION="0,0,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <DEPENDENCY NAME="DateTime-Format-MySQL" VERSION="0,0,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <DEPENDENCY NAME="DateTime-Format-SQLite" VERSION="0,0,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <DEPENDENCY NAME="DateTime-Format-Strptime" VERSION="0,0,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <DEPENDENCY NAME="ExtUtils-MakeMaker" VERSION="6,42,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <DEPENDENCY NAME="SQL-Translator" VERSION="0,0,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <DEPENDENCY NAME="Scalar-Util" VERSION="0,0,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <DEPENDENCY NAME="TAP-DOM" VERSION="0,10,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <DEPENDENCY NAME="Tapper-Config" VERSION="3,000002,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <DEPENDENCY NAME="Tapper-TAP-Harness" VERSION="2,010040,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <DEPENDENCY NAME="Tapper-Test" VERSION="3,000002,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <DEPENDENCY NAME="Test-Fixture-DBIC-Schema" VERSION="0,03,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <DEPENDENCY NAME="Test-More" VERSION="0,0,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <DEPENDENCY NAME="Test-Perl-Critic" VERSION="0,0,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <DEPENDENCY NAME="YAML-Syck" VERSION="1,17,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <DEPENDENCY NAME="common-sense" VERSION="0,0,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <OS NAME="$(OSNAME)" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <ARCHITECTURE NAME="x86_64-linux-5.1" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <CODEBASE HREF="" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    </IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '</SOFTPKG>' >> $(DISTNAME).ppd


# --- MakeMaker pm_to_blib section:

pm_to_blib : $(TO_INST_PM)
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', '\''$(PM_FILTER)'\'')' -- \
	  lib/Tapper/Schema/ReportsDB/Result/ReportgroupArbitrary.pm blib/lib/Tapper/Schema/ReportsDB/Result/ReportgroupArbitrary.pm \
	  lib/Tapper/Schema/ReportsDB/Result/ReportgroupTestrun.pm blib/lib/Tapper/Schema/ReportsDB/Result/ReportgroupTestrun.pm \
	  lib/Tapper/Schema/TestTools.pm blib/lib/Tapper/Schema/TestTools.pm \
	  lib/Tapper/Schema/TestrunDB/ResultSet/Host.pm blib/lib/Tapper/Schema/TestrunDB/ResultSet/Host.pm \
	  lib/Tapper/Schema/TestrunDB/Result/Testrun.pm blib/lib/Tapper/Schema/TestrunDB/Result/Testrun.pm \
	  lib/Tapper/Schema/TestrunDB/Result/PrePrecondition.pm blib/lib/Tapper/Schema/TestrunDB/Result/PrePrecondition.pm \
	  lib/Tapper/Schema/TestrunDB/Result/Host.pm blib/lib/Tapper/Schema/TestrunDB/Result/Host.pm \
	  lib/Tapper/Schema/ReportsDB/Result/View020TestrunOverview.pm blib/lib/Tapper/Schema/ReportsDB/Result/View020TestrunOverview.pm \
	  lib/Tapper/Schema/ReportsDB/Result/ReportSection.pm blib/lib/Tapper/Schema/ReportsDB/Result/ReportSection.pm \
	  lib/Tapper/Schema/TestrunDB/Result/State.pm blib/lib/Tapper/Schema/TestrunDB/Result/State.pm \
	  lib/Tapper/Schema/ReportsDB/ResultSet/ReportgroupTestrun.pm blib/lib/Tapper/Schema/ReportsDB/ResultSet/ReportgroupTestrun.pm \
	  lib/Tapper/Schema.pm blib/lib/Tapper/Schema.pm \
	  lib/Tapper/Schema/ReportsDB.pm blib/lib/Tapper/Schema/ReportsDB.pm \
	  lib/Tapper/Schema/ReportsDB/Result/ReportComment.pm blib/lib/Tapper/Schema/ReportsDB/Result/ReportComment.pm \
	  lib/Tapper/Schema/TestrunDB/ResultSet/TestrunScheduling.pm blib/lib/Tapper/Schema/TestrunDB/ResultSet/TestrunScheduling.pm \
	  lib/Tapper/Schema/TestrunDB/Result/TestplanInstance.pm blib/lib/Tapper/Schema/TestrunDB/Result/TestplanInstance.pm \
	  lib/Tapper/Schema/TestrunDB/Result/Preconditiontype.pm blib/lib/Tapper/Schema/TestrunDB/Result/Preconditiontype.pm \
	  lib/Tapper/Schema/TestrunDB/Result/User.pm blib/lib/Tapper/Schema/TestrunDB/Result/User.pm \
	  lib/Tapper/Schema/TestrunDB/Result/TestrunScheduling.pm blib/lib/Tapper/Schema/TestrunDB/Result/TestrunScheduling.pm \
	  lib/Tapper/Schema/TestrunDB/ResultSet/Queue.pm blib/lib/Tapper/Schema/TestrunDB/ResultSet/Queue.pm \
	  lib/Tapper/Schema/TestrunDB/Result/Scenario.pm blib/lib/Tapper/Schema/TestrunDB/Result/Scenario.pm \
	  lib/Tapper/Schema/TestrunDB/Result/TestrunPrecondition.pm blib/lib/Tapper/Schema/TestrunDB/Result/TestrunPrecondition.pm \
	  lib/Tapper/Schema/ReportsDB/Result/ReportgroupTestrunStats.pm blib/lib/Tapper/Schema/ReportsDB/Result/ReportgroupTestrunStats.pm \
	  lib/Tapper/Schema/TestrunDB/Result/TestrunRequestedFeature.pm blib/lib/Tapper/Schema/TestrunDB/Result/TestrunRequestedFeature.pm \
	  lib/Tapper/Schema/TestrunDB/Result/HostFeature.pm blib/lib/Tapper/Schema/TestrunDB/Result/HostFeature.pm \
	  lib/Tapper/Schema/TestrunDB/Result/Queue.pm blib/lib/Tapper/Schema/TestrunDB/Result/Queue.pm \
	  lib/Tapper/Schema/ReportsDB/Result/Tap.pm blib/lib/Tapper/Schema/ReportsDB/Result/Tap.pm \
	  lib/Tapper/Schema/TestrunDB/Result/Message.pm blib/lib/Tapper/Schema/TestrunDB/Result/Message.pm \
	  lib/Tapper/Schema/TestrunDB/Result/Topic.pm blib/lib/Tapper/Schema/TestrunDB/Result/Topic.pm \
	  lib/Tapper/Schema/ReportsDB/Result/View010TestrunOverviewReports.pm blib/lib/Tapper/Schema/ReportsDB/Result/View010TestrunOverviewReports.pm \
	  lib/Tapper/Schema/TestrunDB/Result/QueueHost.pm blib/lib/Tapper/Schema/TestrunDB/Result/QueueHost.pm \
	  lib/Tapper/Schema/ReportsDB/Result/User.pm blib/lib/Tapper/Schema/ReportsDB/Result/User.pm \
	  lib/Tapper/Schema/ReportsDB/Result/Report.pm blib/lib/Tapper/Schema/ReportsDB/Result/Report.pm \
	  lib/Tapper/Schema/ReportsDB/Result/ReportTopic.pm blib/lib/Tapper/Schema/ReportsDB/Result/ReportTopic.pm \
	  lib/Tapper/Schema/TestrunDB.pm blib/lib/Tapper/Schema/TestrunDB.pm \
	  lib/Tapper/Schema/TestrunDB/Result/TestrunRequestedHost.pm blib/lib/Tapper/Schema/TestrunDB/Result/TestrunRequestedHost.pm \
	  lib/Tapper/Schema/TestrunDB/ResultSet/Testrun.pm blib/lib/Tapper/Schema/TestrunDB/ResultSet/Testrun.pm \
	  lib/Tapper/Schema/ReportsDB/Result/ReportFile.pm blib/lib/Tapper/Schema/ReportsDB/Result/ReportFile.pm \
	  lib/Tapper/Schema/TestrunDB/Result/Precondition.pm blib/lib/Tapper/Schema/TestrunDB/Result/Precondition.pm \
	  lib/Tapper/Schema/TestrunDB/Result/ScenarioElement.pm blib/lib/Tapper/Schema/TestrunDB/Result/ScenarioElement.pm \
	  lib/Tapper/Schema/ReportsDB/Result/Suite.pm blib/lib/Tapper/Schema/ReportsDB/Result/Suite.pm \
	  lib/Tapper/Schema/TestrunDB/ResultSet/Precondition.pm blib/lib/Tapper/Schema/TestrunDB/ResultSet/Precondition.pm 
	$(NOECHO) $(TOUCH) pm_to_blib


# --- MakeMaker selfdocument section:


# --- MakeMaker postamble section:


# End.
# Postamble by Module::Install 0.91
# --- Module::Install::Admin::Makefile section:

realclean purge ::
	$(RM_F) $(DISTVNAME).tar$(SUFFIX)
	$(RM_F) MANIFEST.bak _build
	$(PERL) "-Ilib" "-MModule::Install::Admin" -e "remove_meta()"
	$(RM_RF) inc

reset :: purge

upload :: test dist
	cpan-upload -verbose $(DISTVNAME).tar$(SUFFIX)

grok ::
	perldoc Module::Install

distsign ::
	cpansign -s

