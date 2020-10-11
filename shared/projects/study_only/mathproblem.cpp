#include <iostream>
using namespace std;

int main()
{
	float x1,x2,y1,y2;

	cout << " w point 1 : " << endl;

	cin >> x1 >> x2;

	cout << "w te other point: ";

	do
	{
		cin >> x2 >> y2;
		cout << " M = " << (y1 - y2) / (x1 - x2) << endl;
	} while (true);

	return 0;
}
