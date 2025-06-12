all: setup keygen verifykey encrypt decrypt

setup:
	@echo "Compiling the setup algo..."
	gcc -o ./Executables/ASM_ibe_setup ./C_Progarms/ASM_ibe_setup.c  -lgmp -lpbc -lcrypto
	
keygen:
	@echo "Compiling the keygen algo..."
	gcc -o ./Executables/ASM_ibe_keygen ./C_Progarms/ASM_ibe_keygen.c  -lgmp -lpbc -lcrypto
	
verifykey:
	@echo "Compiling the verify-key algo..."
	gcc -o ./Executables/ASM_ibe_verifykey ./C_Progarms/ASM_ibe_verify_key.c -lgmp -lpbc -lcrypto
	
encrypt:
	@echo "Compiling the encrypt algo..."
	gcc -o ./Executables/ASM_ibe_encrypt ./C_Progarms/ASM_ibe_encrypt.c -lgmp -lpbc -lcrypto

decrypt:
	@echo "Compiling the decrypt algo..."
	gcc -o ./Executables/ASM_ibe_decrypt ./C_Progarms/ASM_ibe_decrypt.c -lgmp -lpbc -lcrypto
	
clean:
	@echo "Remove all executable and output files..."
	rm ./Executables/ASM_ibe_setup ./Executables/ASM_ibe_keygen ./Executables/ASM_ibe_verifykey ./Executables/ASM_ibe_encrypt ./Executables/ASM_ibe_decrypt MSK.bin ibeparams.bin private_key.bin ciphertext.bin encrypted_key.bin output.bin

	

		
	

