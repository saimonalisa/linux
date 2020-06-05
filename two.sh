#include<sys/wait.h>
#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>
#include<stdlib.h>
int main(void)
{
pid_t pid;
int status;
if((pid = fork())<0)
{
printf("Fork error");
}
else if(pid ==0)
{
printf("Child terminates Now\n");
exit(0);
}
if (wait(&status)!=pid)
{
printf("wait error");
}
else
{
printf("Now Parent is Terminating\n");
}
exit(status);}
