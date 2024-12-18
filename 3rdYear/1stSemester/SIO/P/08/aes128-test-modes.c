#include <stdio.h>


// use one of the following
// aes.h explicitly uses intel hw instructions
// aes-sw.h uses openssl to provide the same functionality
// they have the same interface, so we just need to change the header.
#include "aes.h"
//#include "aes-sw.h"



// helper file for SIO Lab on Symmetric Cryptography
//
// gcc aes128-test-modes.c -o aes128-test-modes $(cat cflags.txt) 

int aes128_block_test(void){

    // test vector from from https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/block-ciphers
    const uint8_t tv_key[]    = {0xED, 0xFD, 0xB2, 0x57, 0xCB, 0x37, 0xCD, 0xF1, 0x82, 0xC5, 0x45, 0x5B, 0x0C, 0x0E, 0xFE, 0xBB};
    const uint8_t tv_plain[]  = {0x16, 0x95, 0xFE, 0x47, 0x54, 0x21, 0xCA, 0xCE, 0x35, 0x57, 0xDA, 0xCA, 0x01, 0xF4, 0x45, 0xFF};
    const uint8_t tv_cipher[] = {0x78, 0x88, 0xBE, 0xAE, 0x6E, 0x7A, 0x42, 0x63, 0x32, 0xA7, 0xEA, 0xA2, 0xF8, 0x08, 0xE6, 0x37};

    // space for outputs
    uint8_t computed_cipher[sizeof(tv_cipher)];
    uint8_t computed_plain[sizeof(tv_plain)];

    int out=0;

    uint128_ctx aes128_context;
    aes128_init_context(tv_key,aes128_context);
    
    aes128_block_enc(aes128_context,tv_plain,computed_cipher);
    aes128_block_dec(aes128_context,computed_cipher,computed_plain);

    // tests
    out |= !memcmp(tv_cipher,computed_cipher,sizeof(tv_cipher))?0:1; // enc test
    out |= !memcmp(tv_plain,computed_plain,sizeof(tv_plain))?0:2;    // dec test

    // done
    return out;
}


void aes128_ecb_enc(uint128_ctx aes128_context, const uint8_t *input_plain, const int plain_size, uint8_t *output_cipher) {
    const int number_aes128_blocks = plain_size/AES128_BLOCK_SIZE;
    for(int i=0;i<number_aes128_blocks;i++) {
        aes128_block_enc(aes128_context,input_plain+i*AES128_BLOCK_SIZE,output_cipher+i*AES128_BLOCK_SIZE);
    }
}


void aes128_ecb_dec(uint128_ctx aes128_context, const uint8_t *input_cipher, const int cipher_size, uint8_t *output_plain) {
    /*
     *
     *
     *
     * TODO
     *
     *
     *
     */
}


int aes128_ecb_test(void){

    // test vector from from https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/block-ciphers
    const uint8_t tv_key[]    = {0x77, 0x23, 0xD8, 0x7D, 0x77, 0x3A, 0x8B, 0xBF, 0xE1, 0xAE, 0x5B, 0x08, 0x12, 0x35, 0xB5, 0x66};
    const uint8_t tv_plain[]  = {0x1B, 0x0A, 0x69, 0xB7, 0xBC, 0x53, 0x4C, 0x16, 0xCE, 0xCF, 0xFA, 0xE0, 0x2C, 0xC5, 0x32, 0x31, 0x90, 0xCE, 0xB4, 0x13, 0xF1, 0xDB, 0x3E, 0x9F, 0x0F, 0x79, 0xBA, 0x65, 0x4C, 0x54, 0xB6, 0x0E};
    const uint8_t tv_cipher[] = {0xAD, 0x5B, 0x08, 0x95, 0x15, 0xE7, 0x82, 0x10, 0x87, 0xC6, 0x16, 0x52, 0xDC, 0x47, 0x7A, 0xB1, 0xF2, 0xCC, 0x63, 0x31, 0xA7, 0x0D, 0xFC, 0x59, 0xC9, 0xFF, 0xB0, 0xC7, 0x23, 0xC6, 0x82, 0xF6};

    // space for outputs
    uint8_t computed_cipher[sizeof(tv_cipher)];
    uint8_t computed_plain[sizeof(tv_plain)];

    int out=0;

    uint128_ctx aes128_context;
    aes128_init_context(tv_key,aes128_context);

    aes128_ecb_enc(aes128_context, tv_plain, sizeof(tv_plain), computed_cipher);

    aes128_ecb_dec(aes128_context, computed_cipher, sizeof(computed_cipher), computed_plain);

    // tests
    out |= !memcmp(tv_cipher,computed_cipher,sizeof(tv_cipher))?0:1; // enc test
    out |= !memcmp(tv_plain,computed_plain,sizeof(tv_plain))?0:2;    // dec test

    // done
    return out;
}


void aes128_cbc_enc(uint128_ctx aes128_context, const uint8_t *iv, const uint8_t *input_plain, const int plain_size, uint8_t *output_cipher) {
    /*
     *
     *
     *
     * TODO
     *
     *
     *
     */
}


void aes128_cbc_dec(uint128_ctx aes128_context,  const uint8_t *iv, const uint8_t *input_cipher, const int cipher_size, uint8_t *output_plain) {
    /*
     *
     *
     *
     * TODO
     *
     *
     *
     */
}


int aes128_cbc_test(void){

    // test vector from from https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/block-ciphers
    const uint8_t tv_key[]    = {0x07, 0x00, 0xD6, 0x03, 0xA1, 0xC5, 0x14, 0xE4, 0x6B, 0x61, 0x91, 0xBA, 0x43, 0x0A, 0x3A, 0x0C};
    const uint8_t tv_iv[]     = {0xAA, 0xD1, 0x58, 0x3C, 0xD9, 0x13, 0x65, 0xE3, 0xBB, 0x2F, 0x0C, 0x34, 0x30, 0xD0, 0x65, 0xBB};
    const uint8_t tv_plain[]  = {0x06, 0x8B, 0x25, 0xC7, 0xBF, 0xB1, 0xF8, 0xBD, 0xD4, 0xCF, 0xC9, 0x08, 0xF6, 0x9D, 0xFF, 0xC5, 0xDD, 0xC7, 0x26, 0xA1, 0x97, 0xF0, 0xE5, 0xF7, 0x20, 0xF7, 0x30, 0x39, 0x32, 0x79, 0xBE, 0x91};
    const uint8_t tv_cipher[] = {0xC4, 0xDC, 0x61, 0xD9, 0x72, 0x59, 0x67, 0xA3, 0x02, 0x01, 0x04, 0xA9, 0x73, 0x8F, 0x23, 0x86, 0x85, 0x27, 0xCE, 0x83, 0x9A, 0xAB, 0x17, 0x52, 0xFD, 0x8B, 0xDB, 0x95, 0xA8, 0x2C, 0x4D, 0x00};

    // space for outputs
    uint8_t computed_cipher[sizeof(tv_cipher)];
    uint8_t computed_plain[sizeof(tv_plain)];

    int out=0;

    uint128_ctx aes128_context;
    aes128_init_context(tv_key,aes128_context);

    aes128_cbc_enc(aes128_context,tv_iv,tv_plain,sizeof(tv_plain),computed_cipher);
    
    aes128_cbc_dec(aes128_context,tv_iv,computed_cipher,sizeof(computed_cipher),computed_plain);

    // tests
    out |= !memcmp(tv_cipher,computed_cipher,sizeof(tv_cipher))?0:1; // enc test
    out |= !memcmp(tv_plain,computed_plain,sizeof(tv_plain))?0:2;    // dec test

    // done
    return out;
}


int main() {

    struct {
      char * name;
      int (* test)(void);
    } named_test[] = {
        {"block", aes128_block_test}
        ,{"ecb" , aes128_ecb_test}
        ,{"cbc" , aes128_cbc_test}
    };

    printf("%-6s  %-4s  %-4s\n","TEST","ENC","DEC");
    for(int i=0;i<3;i++) {
        const int r =  named_test[i].test();
        printf("%-6s  %-4s  %-4s\n", named_test[i].name, r&1?"fail":"ok", r&2?"fail":"ok");
    }
}
