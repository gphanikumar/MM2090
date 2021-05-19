# Working with csv on google colab

You can use the [google colab](https://colab.research.google.com) to create jupyter notebooks and work with csv files from the cloud. 

The following code can be copied over to cells in the notebook on colab to edit a csv file and save it similar to the [python-8](python-8.ipynb) notebook.

Import the module to mount google drive

      from google.colab import drive

Mount the drive. When you execute this cell, you will be asked to visit a URL to authenticate and copy the code. You can paste it in the textbox that shows up in the output and enter to complete the oauth. Lets say we want to mount the google drive at the location "/gdrive" in the ephemeral file system provided by the notebook.

      drive.mount('/gdrive')

Now you can do the actions require to read the csv file into a dataframe, insert a column and saving it to a local file called "marks.csv". In your own google drive, create a folder say "mm2090-buffer". We copy this local file into the mounted google drive in a folder using the complete path "/gdrive/MyDrive/mm2090-buffer". The ! character passes the command to the shell that is spawned by the notebook.

      import pandas as pd
      import numpy as np
      url = 'https://raw.githubusercontent.com/gphanikumar/MM2090/master/scripts/RollList.csv'
      df = pd.read_csv(url, header=None)
      names = df.to_numpy()
      es = 40*np.random.rand(len(names))
      df.insert(2, "es", es, True)
      df.to_csv("marks.csv", index=False)
      !cp marks.csv "/gdrive/MyDrive/mm2090-buffer/marks.csv"

Confirm if the file has been copied by looking at the contents of the folder.

      !ls /gdrive/MyDrive/mm2090-buffer

You can also visit your google drive folder to confirm that the file shows up there. Done.
