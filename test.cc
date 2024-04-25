#define PICOJSON_USE_INT64
#include "picojson.h"

int main(){
	picojson::value test(int64_t(1));
	test.to_str();
}
