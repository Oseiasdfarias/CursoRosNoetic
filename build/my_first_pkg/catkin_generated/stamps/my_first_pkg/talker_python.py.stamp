#!/usr/bin/env python

import rospy
from std_msgs.msg import String

def talker():
    chatter_pub = rospy.Publisher("chatter", String, queue_size=100)
    rospy.init_node("talker_python", anonymous=True)
    loop_rate = rospy.Rate(10)
    count = 0

    while not rospy.is_shutdown():

        txt = f"Ola ROS Python! Contagem: {count}"
        rospy.loginfo(txt)
        chatter_pub.publish(txt)
        loop_rate.sleep()

        count = count + 1

if __name__ == "__main__":
    try:
        talker()
    except rospy.ROSInterruptException:
        pass