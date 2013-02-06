SUBDIRS := xfwm4 garcon

help:
	@echo "make rpms        -- generate binary rpm packages"
	@echo "make srpms       -- generate source rpm packages"

%:
	@for dir in $(SUBDIRS); do \
	    $(MAKE) -C $$dir $* || exit 1;\
	done
