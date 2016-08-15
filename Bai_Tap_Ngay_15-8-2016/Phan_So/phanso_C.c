#include <stdio.h>
#include <stdlib.h>
struct phanso
{
	int tu;
	int mau;

};
typedef struct phanso ps;
void nhap(ps *x)
{
	printf("Nhap tu so: ");
	scanf("%d", &x->tu);
	printf("Nhap mau so: ");
	scanf("%d", &x->mau);
}

void xuat(ps *x)
{
	printf("%d/%d\n", x->tu,x->mau);

}

int main()
{
	ps *a;
	int n;
	printf("Nhap n: \n");
	scanf("%d", &n);

	a = (ps*)malloc(n* sizeof(ps));
	for(int i = 0; i < n; i++)
	{
		printf("nhap a[%d]: \n", i);
		nhap(a+i);
	}

	for(int i = 0; i < n; i++)
	{
		
		xuat(a+i);
	}
	free(a);
	return 0;
}