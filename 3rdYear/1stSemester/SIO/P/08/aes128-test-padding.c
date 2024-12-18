#include <stdio.h>


// use one of the following
// aes.h explicitly uses intel hw instructions
// aes-sw.h uses openssl to provide the same functionality
// they have the same interface, so we just need to change the header.
#include "aes.h"
//#include "aes-sw.h"



// helper file for SIO Lab on Symmetric Cryptography
//
// gcc aes128-test-padding.c -o ase128-test-padding $(cat cflags.txt) 

int iWouldPreferNotToContinue(const int l) {
    fprintf(stderr, "This was not suppose to happen at line %d of %s!\n", l, __FILE__);
    exit(-1);
}


int add_padding(uint8_t *plain, const int plain_size) {
    /*
     *
     *
     *
     * TODO
     *
     *
     *
     */
     return -1;
}


int rm_padding(uint8_t *padding, const int full_size) {
    /*
     *
     *
     *
     * TODO
     *
     *
     *
     */
     return -1;
}


int aes128_block_test_padding(void){

    const uint8_t tv_key[]    = {0xED, 0xFD, 0xB2, 0x57, 0xCB, 0x37, 0xCD, 0xF1, 0x82, 0xC5, 0x45, 0x5B, 0x0C, 0x0E, 0xFE, 0xBB};
    const uint8_t tv_plain[]  = {0x00};
    const uint8_t tv_cipher[] = {0x1C, 0x8C, 0xF2, 0x3A, 0x59, 0x99, 0xDC, 0x4B, 0x8A, 0xE7, 0xB5, 0x2F, 0x8C, 0x47, 0x12, 0x25};

    // space for outputs
    uint8_t computed_cipher[sizeof(tv_cipher)];
    uint8_t computed_plain[sizeof(tv_plain)];

    uint8_t *padding_plain = malloc(sizeof(tv_plain)+AES128_BLOCK_SIZE);
    memcpy(padding_plain,tv_plain,sizeof(tv_plain));

    int out=0;

    uint128_ctx aes128_context;
    aes128_init_context(tv_key,aes128_context);

    const int full_size = add_padding(padding_plain,sizeof(tv_plain));
    if(full_size<0) {
        return 3;
    }

    aes128_block_enc(aes128_context,padding_plain,computed_cipher);

    aes128_block_dec(aes128_context,computed_cipher,computed_plain);

    const int real_size = rm_padding(computed_plain, full_size);
    if(real_size<0) {
        return 3;
    }

    // tests
    out |= !memcmp(tv_cipher,computed_cipher,full_size)?0:1; // enc test
    out |= !memcmp(tv_plain,computed_plain,real_size)?0:2;    // dec test

    // done
    free(padding_plain);
    return out;
}


void aes128_ecb_enc(uint128_ctx aes128_context, const uint8_t *input_plain, const int plain_size, uint8_t *output_cipher) {
    const int number_aes128_blocks = plain_size/AES128_BLOCK_SIZE;
    for(int i=0;i<number_aes128_blocks;i++) {
        aes128_block_enc(aes128_context,input_plain+i*AES128_BLOCK_SIZE,output_cipher+i*AES128_BLOCK_SIZE);
    }
}


void aes128_ecb_dec(uint128_ctx aes128_context, const uint8_t *input_cipher, const int cipher_size, uint8_t *output_plain) {
    const int number_aes128_blocks = cipher_size/AES128_BLOCK_SIZE;
    for(int i=0;i<number_aes128_blocks;i++) {
        aes128_block_dec(aes128_context,input_cipher+i*AES128_BLOCK_SIZE,output_plain+i*AES128_BLOCK_SIZE);
    }
}


int aes128_ecb_test_padding(void){

    const uint8_t tv_key[]    = {0x77, 0x23, 0xD8, 0x7D, 0x77, 0x3A, 0x8B, 0xBF, 0xE1, 0xAE, 0x5B, 0x08, 0x12, 0x35, 0xB5, 0x66};
    const uint8_t tv_plain[]  = {0x1B, 0x0A, 0x69, 0xB7, 0xBC, 0x53, 0x4C, 0x16, 0xCE, 0xCF, 0xFA, 0xE0, 0x2C, 0xC5, 0x32, 0x31, 0x90, 0xCE, 0xB4, 0x13, 0xF1, 0xDB, 0x3E, 0x9F, 0x0F, 0x79, 0xBA, 0x65, 0x4C, 0x54, 0xB6, 0x01};
    const uint8_t tv_cipher[] = {0xAD, 0x5B, 0x08, 0x95, 0x15, 0xE7, 0x82, 0x10, 0x87, 0xC6, 0x16, 0x52, 0xDC, 0x47, 0x7A, 0xB1, 0x3E, 0xE2, 0xE6, 0xDC, 0xBC, 0x92, 0x14, 0x09, 0xCD, 0x70, 0x60, 0xEA, 0x9D, 0x29, 0x45, 0x79, 0x2C, 0xB9, 0x0E, 0x79, 0x12, 0xC7, 0xC4, 0x26, 0x62, 0xA6, 0x51, 0xDB, 0x32, 0xA3, 0x13, 0xA5};

    // space for outputs
    // use sizeof tv_cipher since it is always greater or equal to sizeof tv_plain
    uint8_t computed_cipher[sizeof(tv_cipher)];
    uint8_t computed_plain[sizeof(tv_cipher)];

    // copy plain text to a place where there is more space (for padding).
    uint8_t padding_plain[sizeof(tv_plain)+AES128_BLOCK_SIZE];
    memcpy(padding_plain,tv_plain,sizeof(tv_plain));

    int out=0;

    uint128_ctx aes128_context;
    aes128_init_context(tv_key,aes128_context);

    const int full_size = add_padding(padding_plain,sizeof(tv_plain));
    if(full_size<0) {
        return 3;
    }

    aes128_ecb_enc(aes128_context, padding_plain, full_size, computed_cipher);

    aes128_ecb_dec(aes128_context, computed_cipher, full_size, computed_plain);

    const int real_size = rm_padding(computed_plain, full_size);
    if(real_size<0) {
        return 3;
    }

    // tests
    out |= !memcmp(tv_cipher,computed_cipher,full_size)?0:1; // enc test
    out |= !memcmp(tv_plain,computed_plain,real_size)?0:2;    // dec test

    // done
    return out;
}


void aes128_cbc_enc(uint128_ctx aes128_context, const uint8_t *iv, const uint8_t *input_plain, const int plain_size, uint8_t *output_cipher) {

    const int number_aes128_blocks = plain_size/AES128_BLOCK_SIZE;

    uint8_t iv_block[AES128_BLOCK_SIZE];
    uint8_t xor_block[AES128_BLOCK_SIZE];

    // load first iv
    for(int i=0;i<AES128_BLOCK_SIZE;i++) {iv_block[i]=iv[i];}

    for (int i=0;i<number_aes128_blocks;i++) {
        for(int j=0;j<AES128_BLOCK_SIZE;j++) {
            xor_block[j]=input_plain[i*AES128_BLOCK_SIZE+j]^iv_block[j];
        }
        aes128_block_enc(aes128_context,xor_block,output_cipher+i*AES128_BLOCK_SIZE);
        for(int j=0;j<AES128_BLOCK_SIZE;j++) {
            iv_block[j]=output_cipher[i*AES128_BLOCK_SIZE+j];
        }
    }
}


void aes128_cbc_dec(uint128_ctx aes128_context,  const uint8_t *iv, const uint8_t *input_cipher, const int cipher_size, uint8_t *output_plain) {

    const int number_aes128_blocks = cipher_size/AES128_BLOCK_SIZE;

    uint8_t iv_block[AES128_BLOCK_SIZE];

    // load iv
    for(int i=0;i<AES128_BLOCK_SIZE;i++) {iv_block[i]=iv[i];}

    for (int i=0;i<number_aes128_blocks;i++) {
        aes128_block_dec(aes128_context,input_cipher+i*AES128_BLOCK_SIZE,output_plain+i*AES128_BLOCK_SIZE);

        for(int j=0;j<AES128_BLOCK_SIZE;j++) {
            output_plain[i*AES128_BLOCK_SIZE+j]^=iv_block[j];
        }

        for(int j=0;j<AES128_BLOCK_SIZE;j++) {
            iv_block[j]=input_cipher[i*AES128_BLOCK_SIZE+j];
        }
    }
}


int aes128_cbc_test_padding(void){

    const uint8_t tv_key[]    = {0x07, 0x00, 0xD6, 0x03, 0xA1, 0xC5, 0x14, 0xE4, 0x6B, 0x61, 0x91, 0xBA, 0x43, 0x0A, 0x3A, 0x0C};
    const uint8_t tv_iv[]     = {0xAA, 0xD1, 0x58, 0x3C, 0xD9, 0x13, 0x65, 0xE3, 0xBB, 0x2F, 0x0C, 0x34, 0x30, 0xD0, 0x65, 0xBB};
    const uint8_t tv_plain[]  = {0x06, 0x8B, 0x25, 0xC7, 0xBF, 0xB1, 0xF8, 0xBD, 0xD4, 0xCF, 0xC9, 0x08, 0xF6, 0x9D, 0xFF, 0xC5, 0xDD, 0xC7, 0x26, 0xA1, 0x97, 0xF0, 0xE5, 0xF7};
    const uint8_t tv_cipher[] = {0xC4, 0xDC, 0x61, 0xD9, 0x72, 0x59, 0x67, 0xA3, 0x02, 0x01, 0x04, 0xA9, 0x73, 0x8F, 0x23, 0x86, 0xB2, 0xA3, 0xDE, 0xAC, 0x15, 0x40, 0xE3, 0x3E, 0x42, 0xC5, 0xA1, 0x9E, 0x60, 0x15, 0x2C, 0xE4};

    // space for outputs
    // use sizeof tv_cipher since it is always greater or equal to sizeof tv_plain
    uint8_t computed_cipher[sizeof(tv_cipher)];
    uint8_t computed_plain[sizeof(tv_cipher)];

    // copy plain text to a place where there is more space (for padding).
    uint8_t padding_plain[sizeof(tv_plain)+AES128_BLOCK_SIZE];
    memcpy(padding_plain,tv_plain,sizeof(tv_plain));

    int out=0;

    uint128_ctx aes128_context;
    aes128_init_context(tv_key,aes128_context);

    const int full_size = add_padding(padding_plain,sizeof(tv_plain));
    if(full_size<0) {
        return 3;
    }

    aes128_cbc_enc(aes128_context,tv_iv,padding_plain,full_size,computed_cipher);

    aes128_cbc_dec(aes128_context,tv_iv,computed_cipher,full_size,computed_plain);

    const int real_size = rm_padding(computed_plain, full_size);
    if(real_size<0) {
        return 3;
    }

    // tests
    out |= !memcmp(tv_cipher,computed_cipher,full_size)?0:1; // enc test
    out |= !memcmp(tv_plain,computed_plain,real_size)?0:2;    // dec test

    // done
    return out;
}


int main() {

    struct {
      char * name;
      int (* test)(void);
    } named_test[] = {
        {"block ", aes128_block_test_padding}
       ,{"ecb" , aes128_ecb_test_padding}
       ,{"cbc" , aes128_cbc_test_padding}
    };

    printf("%-12s  %-4s  %-4s\n","PADDING TEST","ENC","DEC");
    for(int i=0;i<3;i++) {
        const int r =  named_test[i].test();
        printf("   %-9s  %-4s  %-4s\n", named_test[i].name, r&1?"fail":"ok", r&2?"fail":"ok");
    }
}
