#ifndef SIO_2023_AES128
#define SIO_2023_AES128

#include <stdint.h>
#include <string.h>
#include <wmmintrin.h>

// helper file for SIO Lab on Symmetric Cryptography
//
// compile with: -Wall -msse2 -msse -maes


#define AES128_ROUNDS 10
#define AES128_BLOCK_SIZE 16

typedef  __m128i uint128_ctx[1+AES128_ROUNDS];


//macros
#define AES128_ENC_BLOCK(m,k)               \
    do{                                     \
        m = _mm_xor_si128       (m, k[ 0]); \
        m = _mm_aesenc_si128    (m, k[ 1]); \
        m = _mm_aesenc_si128    (m, k[ 2]); \
        m = _mm_aesenc_si128    (m, k[ 3]); \
        m = _mm_aesenc_si128    (m, k[ 4]); \
        m = _mm_aesenc_si128    (m, k[ 5]); \
        m = _mm_aesenc_si128    (m, k[ 6]); \
        m = _mm_aesenc_si128    (m, k[ 7]); \
        m = _mm_aesenc_si128    (m, k[ 8]); \
        m = _mm_aesenc_si128    (m, k[ 9]); \
        m = _mm_aesenclast_si128(m, k[10]); \
    }while(0)

#define AES128_DEC_BLOCK(m,k)                                   \
    do{                                                         \
        m = _mm_xor_si128       (m, k[10-0]);                   \
        m = _mm_aesdec_si128    (m, _mm_aesimc_si128(k[10-1])); \
        m = _mm_aesdec_si128    (m, _mm_aesimc_si128(k[10-2])); \
        m = _mm_aesdec_si128    (m, _mm_aesimc_si128(k[10-3])); \
        m = _mm_aesdec_si128    (m, _mm_aesimc_si128(k[10-4])); \
        m = _mm_aesdec_si128    (m, _mm_aesimc_si128(k[10-5])); \
        m = _mm_aesdec_si128    (m, _mm_aesimc_si128(k[10-6])); \
        m = _mm_aesdec_si128    (m, _mm_aesimc_si128(k[10-7])); \
        m = _mm_aesdec_si128    (m, _mm_aesimc_si128(k[10-8])); \
        m = _mm_aesdec_si128    (m, _mm_aesimc_si128(k[10-9])); \
        m = _mm_aesdeclast_si128(m, k[10-10]);                  \
    }while(0)

#define AES128_key_exp(k, p) aes128_key_expansion(k, _mm_aeskeygenassist_si128(k, p))

static __m128i aes128_key_expansion(__m128i key, __m128i keygened){
    keygened = _mm_shuffle_epi32(keygened, _MM_SHUFFLE(3,3,3,3));
    key = _mm_xor_si128(key, _mm_slli_si128(key, 4));
    key = _mm_xor_si128(key, _mm_slli_si128(key, 4));
    key = _mm_xor_si128(key, _mm_slli_si128(key, 4));
    return _mm_xor_si128(key, keygened);
}

void aes128_init_context(const uint8_t *enc_key, __m128i *key_schedule){
    key_schedule[0]  = _mm_loadu_si128((const __m128i*) enc_key);
    key_schedule[1]  = AES128_key_exp(key_schedule[0], 0x01);
    key_schedule[2]  = AES128_key_exp(key_schedule[1], 0x02);
    key_schedule[3]  = AES128_key_exp(key_schedule[2], 0x04);
    key_schedule[4]  = AES128_key_exp(key_schedule[3], 0x08);
    key_schedule[5]  = AES128_key_exp(key_schedule[4], 0x10);
    key_schedule[6]  = AES128_key_exp(key_schedule[5], 0x20);
    key_schedule[7]  = AES128_key_exp(key_schedule[6], 0x40);
    key_schedule[8]  = AES128_key_exp(key_schedule[7], 0x80);
    key_schedule[9]  = AES128_key_exp(key_schedule[8], 0x1B);
    key_schedule[10] = AES128_key_exp(key_schedule[9], 0x36);

    // we could load dec keys here and avoid multiple _mm_aesimc_si128
}

void aes128_block_enc(__m128i *key_schedule, const uint8_t *plainText, uint8_t *cipherText){
    __m128i m = _mm_loadu_si128((const __m128i *) plainText);
    AES128_ENC_BLOCK(m,key_schedule);
    _mm_storeu_si128((__m128i *) cipherText, m);
}

void aes128_block_dec(__m128i *key_schedule, const uint8_t *cipherText, uint8_t *plainText){
    __m128i m = _mm_loadu_si128((const __m128i *) cipherText);
    AES128_DEC_BLOCK(m,key_schedule);
    _mm_storeu_si128((__m128i *) plainText, m);
}


#endif //SIO_2023_AES128
