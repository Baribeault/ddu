#
# This file and its contents are supplied under the terms of the
# Common Development and Distribution License ("CDDL"). You may
# only use this file in accordance with the terms of the CDDL.
#
# A full copy of the text of the CDDL should have accompanied this
# source. A copy of the CDDL is also available via the Internet at
# http://www.illumos.org/license/CDDL.
#

#
# Copyright 2019 Alexander Pyhalov
#

CLEANOBJS += $(OBJS)

$(BIN_ROOT):
	$(MKDIR) $@

$(BIN_ROOT)/$(PROGRAM): MODE=0755

$(BIN_ROOT)/$(PROGRAM): $(PROGRAM)
	$(INSTALL) $(PROGRAM) $@

%.o: %.c
	$(COMPILE.c) $<

$(PROGRAM):	$(OBJS)
	$(LINK.c) $^ -o $@

clean:
	$(RM) $(CLEANOBJS)