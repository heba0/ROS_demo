#!/usr/bin/env python3
import pandas as pd
import rospy
from ecg_data.msg import data_struct
import os

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


