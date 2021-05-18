import os
import webbrowser
import pathlib
from datetime import datetime

time = str(datetime.today().strftime('%Y-%m-%d'))

# read counter
path = pathlib.Path(__file__).parent / "counter.txt"
f = open(path, 'r+')
data = int(f.read())
# update counter
newCounter = str(data + 1)
# write new counter
f.seek(0)
f.write(newCounter)
f.truncate()
f.close()

# command = "robot --outputdir=TestReport/ TestCases"
# command = "robot --variable BROWSER:Firefox --outputdir=TestReport/ TestCases"
command = "robot --variable BROWSER:Chrome --outputdir=TestReport/" + time + "_" + newCounter + "/ TestCases"

# command = "robot --variable BROWSER:Chrome --outputdir=TestReport/ TestCases"
os.system(command)

# # rebot tool for combining results and otherwise post-processing outputs:
# command = "rebot --name Example output1.xml output2.xml"
# os.system(command)


# # Serve TestReports
# # open in new tab
# webbrowser.open_new_tab("TestReport/" + time + "_" + newCounter + "/report.html")
# ebbrowser.open_new_tab("TestReport/" + time + "_" + newCounter + "/log.html")

# open in new window
webbrowser.open_new("TestReport/" + time + "_" + newCounter + "/report.html")
webbrowser.open_new_tab("TestReport/" + time + "_" + newCounter + "/log.html")

# # format Robot Framework code according to agreed code standards
# command_tidy = "robotidy TestCases"
# os.system(command_tidy)
