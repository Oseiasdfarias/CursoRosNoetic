#!/usr/bin/env python3

import rospy
from std_msgs.msg import Float64
from std_srvs.srv import Empty, EmptyResponse

class Counter:
    def __init__(self):
        # Pegando um valor e salvando na variável self.count
        self.count = rospy.get_param("initial_count", 0)
        self.publish_interval = rospy.get_param("~pub_rate", 2)

        if ( rospy.has_param("~pub_rate") or rospy.has_param("initial_count") ):
            rospy.loginfo("Parâmetros customizados!")
            # Setando um parâmetro
            rospy.set_param("~custom_param", True)
        else:
            # Setando um parâmetro
            rospy.set_param("~custom_param", False)

        if (rospy.has_param("~delete_param") ):
            rospy.loginfo("Parâmetros deletados!")
            if ( rospy.has_param("~pub_rate") ):
                rospy.delete_param("~pub_rate")
            if ( rospy.has_param("~pub_rate") ):
                rospy.delete_param("initial_count")


        self.num_sub = rospy.Subscriber("/number", Float64, self.numberCallback, queue_size = 10)
        self.count_pub = rospy.Publisher("/current_count", Float64, queue_size=10)
        self.timer_pub = rospy.Timer(rospy.Duration(self.publish_interval), self.timerCallback)
        self.reset_srv = rospy.Service("reset_counter", Empty, self.resetSrvCallback)


    def numberCallback(self, msg):
        self.count = self.count + msg.data
        rospy.loginfo(f"Contagem Atual: {str(self.count)}")

    def timerCallback(self, event):
        msg = Float64()
        msg.data = self.count
        self.count_pub.publish(msg)

    def resetSrvCallback(self, req):
        self.count = 0
        rospy.loginfo("Resetando a contagem!")
        return EmptyResponse()


if __name__ == "__main__":
    try:
        rospy.init_node("counter_node")
        Counter()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass