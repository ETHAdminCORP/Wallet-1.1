cmd_Release/scrypt_lib.a := rm -f Release/scrypt_lib.a && ./gyp-mac-tool filter-libtool libtool  -static -o Release/scrypt_lib.a Release/obj.target/scrypt_lib/scrypt/scrypt-1.2.0/lib/crypto/crypto_scrypt.o Release/obj.target/scrypt_lib/scrypt/scrypt-1.2.0/lib/crypto/crypto_scrypt_smix.o Release/obj.target/scrypt_lib/scrypt/scrypt-1.2.0/libcperciva/util/warnp.o Release/obj.target/scrypt_lib/scrypt/scrypt-1.2.0/libcperciva/alg/sha256.o Release/obj.target/scrypt_lib/scrypt/scrypt-1.2.0/libcperciva/util/insecure_memzero.o Release/obj.target/scrypt_lib/scrypt/scrypt-1.2.0/lib/scryptenc/scryptenc_cpuperf.o