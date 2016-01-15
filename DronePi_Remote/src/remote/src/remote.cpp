#include "ros/ros.h"
#include "std_msgs/String.h"
#include "remote/dof.h"
#include "remote/basic.h"
#include <sstream>
#include <unistd.h>

int main(int argc, char** argv)
{
	ros::init(argc, argv, "remote");
	ros::NodeHandle n;
	ros::Publisher pub=n.advertise<remote::dof>("chatter", 1000);
	ros::Rate loop_rate(10);
	while(ros::ok())
	{
		remote::dof msg;
		msg.acc_x=10;
		msg.acc_y=20;
		msg.acc_z=30;
		pub.publish(msg);
		usleep(1000000);
	}	

return 0;
}
