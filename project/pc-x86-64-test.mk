# top level project rules for the pc-x86-64-test project
#
ARCH := x86
SUBARCH := x86-64
APPS += fb-test
APPS += shell

include project/target/pc.mk
include project/virtual/test.mk
