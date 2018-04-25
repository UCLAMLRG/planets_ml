# UCLA Machine Learning Reading Group: Planets ML Project

This repository is a fork of https://github.com/tensorflow/models, using the `astronet` part of the Tensorflow model library for training on light curves from the Kepler space telescope.

[astronet README](astronet/README.md) - contains instructions on replicating Shallue et al. (2018)


## Setting up environment on SciServer

If using the current (2018-04-23) python DEV docker container.

Packages installed with pip:

- `pip install tensorflow==1.5`
- `pip install numpy --upgrade`
- `pip install pydl`

Packages installed with conda:
- `conda install pandas bazel astropy`

## Notes on replicating the astronet code

When downloading the TCE file, be sure to specifically select the following. By default, the av_training_set column is not selected. You can select it using the `select columns` button on the top left of the webpage.

* `rowid`: Integer ID of the row in the TCE table.
* `kepid`: Kepler ID of the target star.
* `tce_plnt_num`: TCE number within the target star.
* `tce_period`: Period of the detected event, in days.
* `tce_time0bk`: The time corresponding to the center of the first detected
      event in Barycentric Julian Day (BJD) minus a constant offset of
      2,454,833.0 days.
* `tce_duration`: Duration of the detected event, in hours.
* `av_training_set`: Autovetter training set label; one of PC (planet candidate),
      AFP (astrophysical false positive), NTP (non-transiting phenomenon),
      UNK (unknown).


https://exoplanetarchive.ipac.caltech.edu/cgi-bin/TblView/nph-tblView?app=ExoTbls&config=q1_q17_dr24_tce

NOTE: the column `rowid` is actually called `loc_rowid` in the .csv file. So either change that to `rowid` or change the code to use `loc_rowid` in `generate_input_records.py`
