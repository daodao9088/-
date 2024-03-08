def encrypt_text(text, key):
    encrypted_text = ""

    for char in text:
        encrypted_char = chr(ord(char) + key)
        encrypted_text += encrypted_char

    return encrypted_text

def decrypt_text(encrypted_text, key):
    decrypted_text = ""

    for char in encrypted_text:
        decrypted_char = chr(ord(char) - key)
        decrypted_text += decrypted_char

    return decrypted_text

def main():
    text = input("Enter the text: ")
    key = int(input("Enter the encryption/decryption key: "))

    encrypted_text = encrypt_text(text, key)
    decrypted_text = decrypt_text(encrypted_text, key)

    print("Encrypted Text:", encrypted_text)
    print("Decrypted Text:", decrypted_text)

if __name__ == "__main__":
    main()
