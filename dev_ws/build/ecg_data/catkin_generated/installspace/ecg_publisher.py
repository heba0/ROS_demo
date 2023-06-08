#!/usr/bin/env python3
import rospy
from ecg_data.msg import data_struct
import pandas as pd
import rospy
from ecg_data.msg import data_struct
import os

TOPIC = 'ecg_data_topic'
NODE = 'ecg_publisher'
DATA_PATH = "./src/ecg_data/scripts/Dataset_ECG_1/ecg-bp-013/vivalnk_vv330_ecg"
DATA_TYPE = "ecg"


def get_data(folder_path,data_type, pub, rate):
    msg = data_struct()    
    while not rospy.is_shutdown():
      for root, dirs, files in os.walk(folder_path):
         for file in files:
               if not file.startswith('.'):
                  file_path = os.path.join(root, file)
                  df = pd.read_csv(file_path, nrows=100, compression='gzip',
                                       error_bad_lines=False)
                  for index, row in df.iterrows():
                    msg.signal_type = data_type
                    msg.project_id = row['projectId']
                    msg.user_id = row['userId']
                    msg.time = rospy.Time.from_sec(row['time'])
                    msg.data = row[data_type]
                    rospy.loginfo(msg)
                    pub.publish(msg)
                    rate.sleep()
def talker():
    pub = rospy.Publisher(TOPIC, data_struct, queue_size=10)
    rospy.init_node(NODE, anonymous=True)
    rate = rospy.Rate(10) # 10hz
    rospy.loginfo("started")
    get_data(DATA_PATH,DATA_TYPE, pub, rate)
  

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
