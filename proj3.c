#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <signal.h>
#include <time.h>
#include <fcntl.h>

#define TIMEOUT 60
#define MAX 2

typedef struct secret_info {
    char info[32];
    unsigned long secret;
} SEC;

typedef struct stu_info {
    char name[16];
    char note[16];
    char stuid[8];
	unsigned long age;
} STU;

void magic2() {
    char cmd[128];
	int r = 0;

    memset(cmd, '\0', sizeof(cmd));

    puts("Congrats!");
    read(0,cmd,sizeof(cmd));
    r += strstr(cmd, "=") != 0;
	r += strstr(cmd, "PATH") != 0;
	r += strstr(cmd, "export") != 0;
	r += strstr(cmd, "/") != 0;
	r += strstr(cmd, "bin") != 0;
	r += strstr(cmd, "cat") != 0;
	r += strstr(cmd, "\\") != 0;
	r += strstr(cmd, "`") != 0;
	r += strstr(cmd, "flag2") != 0;	

    if (!r)
        system(cmd);
    else 
        puts("NAH HAH, TRY HARDER!");
}

void magic1() {
    char buf[64];
    int fd = open("./flag1", O_RDONLY);

    if (fd <= 0) {
        printf("NOOO!\n");
        exit(1);
    }

    memset(buf, '\0', sizeof(buf));
    puts("Congrats1!");
    read(fd, buf, sizeof(buf));
    write(1, buf, sizeof(buf));
}

void delete_env(char** env) {
    char** p;
    for (p = env; *p; p++)
        memset(*p, '\0', strlen(*p));
}

unsigned long generate_secret() {
	unsigned long rndsecret;
    int urnd = open("/dev/random", O_RDONLY);

	read(urnd, &rndsecret, sizeof(long));
	close(urnd);

    return rndsecret;
}

void init_stu(STU *s) {
    memcpy(&s[0].name, "Alice", 5);
    memcpy(&s[1].name, "Bob", 3);
	s[0].age = 20;
	s[1].age = 22;
}

void menu() {
	puts("----------------------");
	puts("         NS           ");
	puts("----------------------");
	puts(" 1. View info         ");
	puts(" 2. Edit info         ");
	puts(" 3. Exit              ");
	puts("----------------------");
	printf("Your choice: ");
}

void view(STU *s) {
    int id;
    printf("Please input id: ");
    scanf("%d", &id);

    if (id < MAX) {
        printf("Name: %s\n", s[id].name);
        printf("Note: %s\n", s[id].stuid);
        printf("Age: %lu\n", s[id].age);
    }
    else
        puts("HACKER DETECTED!!");
}

void edit_note(STU *s,SEC secret) {
	unsigned long check;
	printf("Please input secret first: ");
	scanf("%lu", &check);

	if (check == secret.secret) {
		int id;
		printf("Please input id: ");
		scanf("%d",&id);
		if (id < MAX) {
            int len;
			printf("Input new note length: ");
            scanf("%d",&len);
            if (len < 16) {
                read(0, s[id].note, len);
                puts("Done!");
            }
            else
                puts("HACKER DETECTED!!");
		}
        else
            puts("HACKER DETECTED!!");
	}
	else
		puts("YOU SHALL NOT PASS!");
}

void func() {
    STU S[MAX]; 
    SEC secret;

    unsigned long ret_addr = 0;
    ret_addr = *(&ret_addr + 35);

    memcpy(secret.info, "U can't see me!", sizeof(secret.info));
    secret.secret = generate_secret();

	memset(S, '\0', sizeof(STU) * MAX);
    init_stu(S);
    
    char buf[4];
    memset(buf, '\0', sizeof(buf));
    
    while (1) {
		menu();
        read(0, buf, 4);
        switch(atoi(buf)) {
            case 1:
                view(S);
                break;
            case 2:
                edit_note(S, secret);
                break;
            case 3:
                if (*(&ret_addr + 35) == (unsigned long)magic1 || *(&ret_addr + 35) == (unsigned long)magic2 || *(&ret_addr + 35) == ret_addr)
                    return;
                exit(1);
                break;
            default:
                puts("Invalid choice!");
                break;
        }
    }
}

void handler(int signum) {
    puts("Timeout");
    _exit(1);
}

int main(int argc,char** argv,char** env) {
	setvbuf(stdin, 0, 2, 0);
	setvbuf(stdout, 0, 2, 0);
	setvbuf(stderr, 0, 2, 0);

    signal(SIGALRM, handler);
    alarm(TIMEOUT);

    delete_env(env);
    setenv("PATH", ".", 1);
    
    func();
    return 0;
}
