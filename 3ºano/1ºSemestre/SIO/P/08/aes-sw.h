#ifndef SIO_2023_AES128_SW
#define SIO_2023_AES128_SW


#include <openssl/conf.h>
#include <openssl/evp.h>
#include <assert.h>
#include <string.h>
#include <stdio.h>

// helper file for SIO Lab on Symmetric Cryptography
//
// same interface as aes.h but implemented in software


#define AES128_BLOCK_SIZE 16

typedef  uint8_t uint128_ctx[AES128_BLOCK_SIZE];

void aes128_init_context(const uint8_t *enc_key, uint128_ctx key_schedule){
    memcpy(key_schedule,enc_key,AES128_BLOCK_SIZE);
}

void aes128_block_enc(const uint128_ctx key, const uint8_t *plainText, uint8_t *cipherText){

    int ciphertext_length = 0;
    int length = 0;

    EVP_CIPHER_CTX * ctx = EVP_CIPHER_CTX_new();
    if (!ctx) {
        perror("EVP_CIPHER_CTX_new()");
        exit(-1);
    }

    if (1 != EVP_EncryptInit_ex(ctx, EVP_aes_128_ecb(), NULL, key, NULL)) {
        perror("EVP_EncryptInit_ex()");
        exit(-1);
    }

    EVP_CIPHER_CTX_set_padding(ctx, 0);

    if (1 != EVP_EncryptUpdate(ctx, cipherText, &length, plainText, AES128_BLOCK_SIZE)) {
        perror("EVP_EncryptUpdate()");
        exit(-1);
    }
    ciphertext_length += length;

    if (1 != EVP_EncryptFinal_ex(ctx, cipherText + length, &length)) {
        perror("EVP_EncryptFinal_ex()");
        exit(-1);
    }
    ciphertext_length += length;

    EVP_CIPHER_CTX_free(ctx);
}


void aes128_block_dec(const uint128_ctx key, const uint8_t *cipherText, uint8_t *plainText){

    int plaintext_length = 0;
    int length = 0;

    EVP_CIPHER_CTX * ctx = EVP_CIPHER_CTX_new();
    if (!ctx) {
        perror("EVP_CIPHER_CTX_new()");
        exit(-1);
    }

    if (1 != EVP_DecryptInit_ex(ctx, EVP_aes_128_ecb(), NULL, key, NULL)) {
        perror("EVP_DecryptInit_ex()");
        exit(-1);
    }

    EVP_CIPHER_CTX_set_padding(ctx, 0);

    if (1 != EVP_DecryptUpdate(ctx, plainText, &length, cipherText, 16)) {
        perror("EVP_DecryptUpdate()");
        exit(-1);
    }
    plaintext_length += length;

    if (1 != EVP_DecryptFinal_ex(ctx, plainText + length, &length)) {
        perror("EVP_DecryptFinal_ex()");
        exit(-1);
    }
    plaintext_length += length;

    EVP_CIPHER_CTX_free(ctx);
}

#endif
