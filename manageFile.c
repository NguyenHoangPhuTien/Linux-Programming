#include <unistd.h>
#include <stdio.h>
#include <dirent.h>
#include <string.h>
#include <sys/stat.h>
#include <stdlib.h>
#include <iostream>
#include <fcntl.h>

void createFolder() {
  
  printf("Input folder name need to create: ");
  char *nameOfFolder = new char[50];
  scanf("%s", nameOfFolder);
  int check = mkdir(nameOfFolder, 0777);
  if(check == -1)
    printf("Error with create new folder \n" );
  else
     printf("Success with create new folder \n" );
  
}

void createFile() {
  
   printf("Please input name of file: ");
    char *filename = new char[50];
    scanf("%s", filename);
    int fd2 = open(filename,0777);
	if (fd2 != -1) {
    	close(fd2);	
    }
    printf("Create file successfull! \n");
    delete filename;
}

void deleteFile() {
  
  printf("Input file name need to delete: ");
  char *nameOfFile = new char[50];
  scanf("%s", nameOfFile);
  if( remove( nameOfFile ) != 0 )
    perror( "Error deleting file" );
  else
    puts( "File successfully deleted" );
   
}

void appendFile() {  
	FILE *pFile;
	
	
	printf("Input file name need to append: ");
	char *nameOfFile = new char[50];
	getchar();
  	scanf("%99[^\n]", nameOfFile);
  	printf("Input content need to append: ");
  	getchar();
	char *content = new char[50];
  	scanf("%99[^\n]", content);
  	
	pFile=fopen(nameOfFile, "a");
	fprintf(pFile, "\n");
	fprintf(pFile, content);
	fclose(pFile);
	
}
int main()
{
	char check = '1';
	char choice;
	while(check == '1'){
		printf("a.Create new folder \n");
		printf("b.Create new file \n");
		printf("c.Delete file \n");
		printf("d.Append file \n");
		printf("Please choice (a/b/c/d) \n");
		scanf("%s",&choice);
		switch(choice){

			case 'a':
				createFolder();
				printf("1.Continue \n");
				printf("2.Quit \n");
				printf("Please choice(1/2) \n");
				char choice2;
				scanf("%s",&choice2);
				if(choice2 == '2')
					check = '0';
				else
					check = '1';
				
				break;
			case 'b':
				createFile();
				printf("1.Continue \n");
				printf("2.Quit \n");
				printf("Please choice(1/2) \n");
				char choice3;
				scanf("%s",&choice3);
				if(choice3 == '2')
					check = '0';
				else
					check = '1';
				
				break;
			case 'c':
				deleteFile();
				printf("1.Continue \n");
				printf("2.Quit \n");
				printf("Please choice(1/2) \n");
				char choice4;
				scanf("%s",&choice4);
				if(choice4 == '2')
					check = '0';
				else
					check = '1';
				
				break;
			case 'd':
				appendFile();
				printf("1.Continue \n");
				printf("2.Quit \n");
				printf("Please choice(1/2) \n");
				char choice5;
				scanf("%s",&choice5);
				if(choice5 == '2')
					check = '0';
				else
					check = '1';
				
				break;
		}
		system("clear");
	}

}