#include "ros/ros.h"
#include "std_msgs/String.h"

#include <string.h>

int main(int argc, char **argv){
    ros::init(argc, argv, "talker_cpp");

    ros::NodeHandle nh;

    ros:: Rate loop_rate(10);

    ros::Publisher chatter_pub = nh.advertise<std_msgs::String>("chatter", 1000);

    int count = 0;
    while(ros::ok()){
        
        std::string txt = "Ola ROS! Contagem: " + std::to_string(count);

        ROS_INFO("%s", txt.c_str());

        std_msgs::String msg;
        msg.data = txt;
        chatter_pub.publish(msg);

        ros::spinOnce();
        loop_rate.sleep();
        ++count;
    }

    return 0;

}