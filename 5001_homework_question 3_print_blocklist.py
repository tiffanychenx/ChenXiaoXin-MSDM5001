import re

fo = open('blocklist.xml','r')
for each_line in fo:
	match = re.search('blockID="[ig].+[0-9]+"',each_line)
	if match:
		print(match.group(0))
fo.close()


fo = open('blocklist.xml','r')
for each_line in fo:
        if "id=" in each_line:
                match = re.search('id=".+@.+"',each_line)
                if match:
                        if '^' not in match.group(0) and '/' not in match.group(0) and '\\' not in match.group(0):
                                print(each_line)
