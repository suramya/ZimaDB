#include "models/truncate_table.h"

#include <iostream>
using namespace std;

TruncateTable::TruncateTable(vector<string> tokens, QueryCommand& command) {
    if(tokens.size() != 3) {
        cout << "Error: bad TRUNCATE syntax (TRUNCATE TABLE table_name;)" << endl; command = ERROR;
    } else {
        table_name = tokens[2];
    }
}