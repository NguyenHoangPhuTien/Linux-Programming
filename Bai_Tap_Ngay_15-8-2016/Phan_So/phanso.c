#include <stdio.h>

struct phanso
{
	int tu;
	int mau;

};
typedef struct phanso PHANSO;
void nhap(PHANSO &x)
{
	printf("Nhap tu so: ");
	scanf("%d",&x.tu);

	printf("Nhap mau so: ");
	scanf("%d",&x.mau);
}

void xuat(PHANSO x)
{
	printf("%d/%d\n", x.tu,x.mau);

}

int main()
{
	PHANSO *a;
	int n;
	printf("Nhap n: \n");
	scanf("%d", &n);
	a = new PHANSO[n];
	for(int i = 0; i < n; i++)
	{
		printf("nhap a[%d]: \n", i);
		nhap(a[i]);
	}

	for(int i = 0; i < n; i++)
	{
		
		xuat(a[i]);
	}
	delete []a;
	return 0;
}

