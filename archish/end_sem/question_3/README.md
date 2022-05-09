# Question 3

## Problem Statement

Consider a temperature sensor placed near a valuable asset in a highly secure space. It records the local temperature every 5 seconds and writes it to a stream. The temperature data is flushed such that it keeps the data of only one hour. That is, you can view a window of only 720 data points at a time. Each new data point entering the window flushes the oldest data point out. Write two
programs that do the following tasks:

* Program-A when executed will continuously send temperature data that looks almost flat (say, room temperature with a small random noise within 0.5 Kelvin). This is to simulate the data coming from the temperature sensor. At predetermined instance, introduce a spike (sudden increase of temperature by 10 K) for 10 seconds and revert back to room temperature. This spike is caused due to the presence of an intruder.

* Program-B keeps reading the incoming data, detects the spike and reports the instance when it
took place. Verify if the detection is accurate.

