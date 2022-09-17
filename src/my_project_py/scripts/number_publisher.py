#!/usr/bin/env python3

import rospy
from std_msgs.msg import Float64
from std_srvs.srv import Empty

class NumberPublisher:

    def __init__(self):
        self.number = 3.1
        self.publish_interval = 1
        self.reset_interval = 6

        self.num_pub = rospy.Publisher("/number", Float64, queue_size=10)
        self.timer_pub = rospy.Timer(rospy.Duration(self.publish_interval), self.timerCallback)
        self.timer_reset = rospy.Timer(rospy.Duration(self.reset_interval), self.timerResetCallback)
        self.client_reset = rospy.ServiceProxy("reset_counter", Empty)

    def timerCallback(self, event):
        msg = Float64()
        msg.data =self.number
        self.num_pub.publish(msg)
    
    def timerResetCallback(self, event):
        rospy.loginfo("Solicitação de reset da contagem!")
        self.client_reset()

if __name__ == '__main__':
    try:
        rospy.init_node("number_publisher_node")
        NumberPublisher()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
