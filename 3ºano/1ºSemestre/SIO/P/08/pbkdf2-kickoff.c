#include <bsd/bsd.h>
#include <bsd/readpassphrase.h>
#include <openssl/evp.h>
#include <openssl/sha.h>

// helper file for SIO Lab on Symmetric Cryptography
//
// gcc $(cat cflags.txt)  pbkdf2-kickoff.c -o pbkdf2-kickoff


#define SHA256_SIZE 32

#define KDF_TEST_FILE "/tmp/kdf_test_file.data"

int iWouldPreferNotToContinue(const int l) {
    fprintf(stderr, "This was not suppose to happen at line %d of %s!\n", l, __FILE__);
    exit(-1);
}

int main() {

    //number of iterations to use in PKCS5_PBKDF2_HMAC
    const int kdf_iter = 99999;

    //space for the password read from terminal
    char passbuf[1024];

    // read the password in a secure way
    if (readpassphrase("Password: ", passbuf, sizeof(passbuf), RPP_REQUIRE_TTY) == NULL) {
        iWouldPreferNotToContinue(__LINE__);
    }

    // initialize pseudo-random gen with a different seed each time
    srand(getpid()+time(NULL)); 

    // get a random salt
    uint8_t salt[SHA256_SIZE] = {0};
    for(int i=0;i<SHA256_SIZE;i++) {
        salt[i]=(char)rand();
    }

    // space for key
    uint8_t kdf_output[SHA256_SIZE];

    // generate the key
    PKCS5_PBKDF2_HMAC(passbuf, sizeof(passbuf),
        salt, sizeof(salt),
        kdf_iter,
        EVP_sha256(),
        sizeof(kdf_output), kdf_output);

    //
    uint8_t key[16];
    uint8_t iv[16];

    /*
     * now we have a key and an IV ...
     */
    memcpy(key, kdf_output,    16);
    memcpy(iv , kdf_output+16, 16);


    // dump the salt
    printf("Salt:\n");
    for(int i=0;i<sizeof(salt);i++) {
        printf("%02X ",salt[i]);
    }
    printf("\n\n");

    // dump the key generated
    printf("PKCS5_PBKDF2_HMAC output:\n");
    for(int i=0;i<sizeof(kdf_output);i++) {
        printf("%02X ",kdf_output[i]);
    }
    printf("\n\n");


    { // this is an example who to store data in a file.
        FILE *fptr = fopen(KDF_TEST_FILE, "w");
        if(fptr == NULL) {
            iWouldPreferNotToContinue(__LINE__);        
        }

        fwrite(&kdf_iter,4,1,fptr); //store the number of iterations, it has 4 bytes
        fwrite(salt,SHA256_SIZE,1,fptr); // store salt, we are assuming it is SHA256_SIZE bytes
        // see `man fwrite` for details

        fclose(fptr);
    }


    {// this will get data from file

        // get some info...
        struct stat info;
        if (stat(KDF_TEST_FILE, &info) != 0) {
            iWouldPreferNotToContinue(__LINE__);
        }
        printf("\nGetting data from a file with %lu bytes\n", (unsigned long)info.st_size);

        { // how to read all the content of the file to a memory region?
          //
            uint8_t *content = malloc(info.st_size); // get space for data
            FILE *fptr = fopen(KDF_TEST_FILE, "r"); // open the file
            const size_t bytes_read = fread(content, info.st_size, 1, fptr); // read the file
            if (bytes_read != 1) { // check error
                /* error handling */
            }
            // now data is in `content`
            fclose(fptr); // close the file

            // do whatever you want...
            printf("The content of the file:\n");
            for(int i=0;i<info.st_size;i++) {
                printf("%02X ",content[i]);
            }
            printf("\n\n");

            free(content); // release the `content`
        }
    
        FILE *fptr = fopen(KDF_TEST_FILE, "r");
        if(fptr == NULL) {
            iWouldPreferNotToContinue(__LINE__);
        }

        uint32_t kdf_iter_from_file;
        uint8_t salt_from_file[SHA256_SIZE];

        fread(&kdf_iter_from_file,4,1,fptr); // get number of iterations, we know it is an integer with 4 bytes  
        fread(salt_from_file,SHA256_SIZE,1,fptr); // get salt, we are assuming it is SHA256_SIZE bytes
        
        fclose(fptr);
        
        // use the password again to recalculate the key
        unsigned char key_from_file_data[SHA256_SIZE];
        PKCS5_PBKDF2_HMAC(passbuf, sizeof(passbuf),
            salt_from_file, sizeof(salt_from_file), // salt_from_file here!
            kdf_iter_from_file,                     // kdf_iter_from_file
            EVP_sha256(),
            sizeof(key_from_file_data), key_from_file_data);

        // dump the salt_from_file and the key_from_file_data generated
        // it should be equal to the previous dump!!

        // dump the salt
        printf("Salt again:\n");
        for(int i=0;i<sizeof(salt_from_file);i++) {
            printf("%02X ",salt_from_file[i]);
        }
        printf("\n\n");

        // dump the key generated
        printf("PKCS5_PBKDF2_HMAC output again:\n");
        for(int i=0;i<sizeof(key_from_file_data);i++) {
            printf("%02X ",key_from_file_data[i]);
        }
        printf("\n\n");
    }
}
