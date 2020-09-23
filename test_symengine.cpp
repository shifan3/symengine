#include <symengine/symbol.h>
#include <iostream>

using namespace std;
using namespace SymEngine;
int main(int argc, char const *argv[])
{
    auto x= symbol("x");
    cout << x->__str__();
    return 0;
}
