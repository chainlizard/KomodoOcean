rust_packages := rust librustzcash

ifeq ($(build_os),darwin)
zcash_packages := libsnark libgmp libsodium
else
	zcash_packages := libgmp libsodium
endif

ifeq ($(host_os),linux)
	packages := boost openssl libevent zeromq $(zcash_packages) googletest googlemock
else
	packages := boost openssl libevent zeromq $(zcash_packages) googletest googlemock libcurl
endif

native_packages := native_ccache

wallet_packages=bdb
