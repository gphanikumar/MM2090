# Question 2 

Publicly available datasets are often riddled with errors. In most cases, data visualization reveals such 2.
inconsistencies. In this task, you are provided with a dataset of an EV manufacturer that contains
multiple parameters. The parameters are mentioned in the header of the dataset.
– Upon inspection, it turns out that all the alphabets in the data have been mistakenly replaced with
their complement (where the complement of the ith letter of the alphabet is 27 − ith letter with the
case retained).
– Also, on keen observation, the SoH and SoC columns are interchanged for `Vehicle Number` AG.
– (Misreported entries) In addition to these errors, there are also obvious entries where the reported
`mileage` is non-zero despite SoC = 0.
– There are also rows in the dataset where certain parameters are missing. Since that those rows are
useless, you may remove them.
You are tasked with correcting these errors to produce a clean dataset and also Flag misreported entries
as “fake”. The dataset is located at `/var/home/Jan24/assignments/assignment_2`.

## Usage:
./question_2.sh final_dataset.txt > out.csv

## Input:
Vehicle Number, SoC, Mileage(in m), Charging Time(in min), SoH, Driver Name <br />
RB-34-XE 86 11180 12 21 VHMSKKUC <br />
                  40             <br />
AG-22-QA 2  1170  81 9  MUAYENW  <br /> 
LT-20-TV 0  5961  90 52 NBBLNBG  <br />

## Output:
out.csv<br />
Vehicle Number, SoC, Mileage(in m), Charging Time(in min), SoH, Driver Name, Flag<br />
RB-34-XE 86 11180 12 21 ESNHPHFX<br />
AG-22-QA 9  1170  81 2  NFAZBVM<br />
LT-20-TV 0  5961  90 52 MYYOYMT Fake<br />
