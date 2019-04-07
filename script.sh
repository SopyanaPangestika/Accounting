#!/bin/sh

if [ ! -d "venv" ]; then
    virtualenv venv
fi
. venv/bin/activate
pip install -r requirements.txt

sleep 9

# First Time Run the Test
echo
echo "========================================"
echo "Running Test"
echo "========================================"
echo

robot --outputdir robot_results --log log.html --report report.html --include Sanity --exclude Broken Accounting/tests/

if [ $? -eq 0 ]; then
	echo "Everything OK On First Test!"
	exit 0	
fi

# we keep the first log file
cp robot_results/output.xml robot_results/first_run.xml

# we launch the tests that failed
echo
echo "========================================"
echo "Running again the tests that failed"
echo "========================================"
echo

robot --outputdir robot_results --rerunfailed robot_results/output.xml --include Sanity --exclude Broken Accounting/tests/

# Merging output files
echo
echo "========================================"
echo "Merging output files"
echo "========================================"
echo

rebot --outputdir robot_results --output output.xml --merge robot_results/first_run.xml robot_results/output.xml
rebot --outputdir robot_results --output output.xml --merge robot_results/output.xml
