cd examples

export KMER=6
# export MODEL_PATH=./ft/prom-core/$KMER
# export PREDICTION_PATH=./result/prom-core/$KMER
# export MODEL_PATH=../data/jayavulu/new
export MODEL_PATH=../dnaBERT_pretrained_models/regression-6-new-12w-0

export DATA_PATH=../data/jayavulu/regression #sample_data/ft/prom-core/$KMER
export PREDICTION_PATH=../data/jayavulu/result #./ft/prom-core/$KMER

python run_finetune_regression.py \
    --model_type dna \
    --tokenizer_name=dna$KMER \
    --model_name_or_path $MODEL_PATH \
    --task_name dnaregression \
    --output_mode regression \
    --do_predict \
    --data_dir $DATA_PATH  \
    --max_seq_length 256 \
    --per_gpu_pred_batch_size=128   \
    --output_dir $MODEL_PATH \
    --predict_dir $PREDICTION_PATH \
    --n_process 48