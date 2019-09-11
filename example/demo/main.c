#include "eMPL_outputs.h"
#include "packet.h"


int main(int argc, char *argv[])
{
	long msg, data[9];
	int8_t accuracy;
	unsigned long timestamp;
	float float_data[3] = {0};

    if (inv_get_sensor_type_euler(data, &accuracy, (inv_time_t*)&timestamp)) {
        eMPL_send_data(PACKET_DATA_EULER, data);
    }

    return 0;
}
