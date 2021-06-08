# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := scrypt_wrapper
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=scrypt_wrapper' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DHAVE_CONFIG_H' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-O0 \
	-gdwarf-2 \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter

# Flags passed to only C files.
CFLAGS_C_Debug := \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-std=gnu++0x \
	-stdlib=libc++ \
	-fno-rtti \
	-fno-exceptions \
	-fno-threadsafe-statics \
	-fno-strict-aliasing

# Flags passed to only ObjC files.
CFLAGS_OBJC_Debug :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Debug :=

INCS_Debug := \
	-I/Users/vyacheslav/.node-gyp/8.9.0/include/node \
	-I/Users/vyacheslav/.node-gyp/8.9.0/src \
	-I/Users/vyacheslav/.node-gyp/8.9.0/deps/uv/include \
	-I/Users/vyacheslav/.node-gyp/8.9.0/deps/v8/include \
	-I$(srcdir)/src/scryptwrapper/inc \
	-I$(srcdir)/src \
	-I$(srcdir)/scrypt/scrypt-1.2.0/libcperciva/alg \
	-I$(srcdir)/scrypt/scrypt-1.2.0/libcperciva/util \
	-I$(srcdir)/scrypt/scrypt-1.2.0/lib/crypto \
	-I$(srcdir)/scrypt/scrypt-1.2.0/lib/util \
	-I$(srcdir)/scrypt/scrypt-1.2.0/lib/scryptenc

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=scrypt_wrapper' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DHAVE_CONFIG_H'

# Flags passed to all source files.
CFLAGS_Release := \
	-Os \
	-gdwarf-2 \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter

# Flags passed to only C files.
CFLAGS_C_Release := \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-std=gnu++0x \
	-stdlib=libc++ \
	-fno-rtti \
	-fno-exceptions \
	-fno-threadsafe-statics \
	-fno-strict-aliasing

# Flags passed to only ObjC files.
CFLAGS_OBJC_Release :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Release :=

INCS_Release := \
	-I/Users/vyacheslav/.node-gyp/8.9.0/include/node \
	-I/Users/vyacheslav/.node-gyp/8.9.0/src \
	-I/Users/vyacheslav/.node-gyp/8.9.0/deps/uv/include \
	-I/Users/vyacheslav/.node-gyp/8.9.0/deps/v8/include \
	-I$(srcdir)/src/scryptwrapper/inc \
	-I$(srcdir)/src \
	-I$(srcdir)/scrypt/scrypt-1.2.0/libcperciva/alg \
	-I$(srcdir)/scrypt/scrypt-1.2.0/libcperciva/util \
	-I$(srcdir)/scrypt/scrypt-1.2.0/lib/crypto \
	-I$(srcdir)/scrypt/scrypt-1.2.0/lib/util \
	-I$(srcdir)/scrypt/scrypt-1.2.0/lib/scryptenc

OBJS := \
	$(obj).target/$(TARGET)/src/util/memlimit.o \
	$(obj).target/$(TARGET)/src/scryptwrapper/keyderivation.o \
	$(obj).target/$(TARGET)/src/scryptwrapper/pickparams.o \
	$(obj).target/$(TARGET)/src/scryptwrapper/hash.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))
$(OBJS): GYP_OBJCFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE)) $(CFLAGS_OBJC_$(BUILDTYPE))
$(OBJS): GYP_OBJCXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE)) $(CFLAGS_OBJCC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-L$(builddir) \
	-stdlib=libc++

LIBTOOLFLAGS_Debug :=

LDFLAGS_Release := \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-L$(builddir) \
	-stdlib=libc++

LIBTOOLFLAGS_Release :=

LIBS :=

$(builddir)/scrypt_wrapper.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/scrypt_wrapper.a: LIBS := $(LIBS)
$(builddir)/scrypt_wrapper.a: GYP_LIBTOOLFLAGS := $(LIBTOOLFLAGS_$(BUILDTYPE))
$(builddir)/scrypt_wrapper.a: TOOLSET := $(TOOLSET)
$(builddir)/scrypt_wrapper.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(builddir)/scrypt_wrapper.a
# Add target alias
.PHONY: scrypt_wrapper
scrypt_wrapper: $(builddir)/scrypt_wrapper.a

# Add target alias to "all" target.
.PHONY: all
all: scrypt_wrapper

# Add target alias
.PHONY: scrypt_wrapper
scrypt_wrapper: $(builddir)/scrypt_wrapper.a

# Short alias for building this static library.
.PHONY: scrypt_wrapper.a
scrypt_wrapper.a: $(builddir)/scrypt_wrapper.a

# Add static library to "all" target.
.PHONY: all
all: $(builddir)/scrypt_wrapper.a

