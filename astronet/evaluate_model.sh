# Directory to save model checkpoints into.
MODEL_DIR="/home/idies/workspace/Storage/tdo/planets_ml/checkpoints/"

# Directory to save output TFRecord files into.
TFRECORD_DIR="/home/idies/workspace/Storage/tdo/planets_ml/tfrecord"

TCE_CSV_FILE="/home/idies/workspace/Storage/tdo/planets_ml/q1_q17_dr24_tce.csv"

# Directory to download Kepler light curves into.
KEPLER_DATA_DIR="/home/idies/workspace/Storage/tdo/planets_ml/data/"

python bazel-bin/astronet/evaluate \
  --model=AstroCNNModel \
  --config_name=local_global \
  --eval_files=${TFRECORD_DIR}/test* \
  --model_dir=${MODEL_DIR}