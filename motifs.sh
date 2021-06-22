cd motif

export KMER=6
export DATA_PATH=../data/jayavulu/new #sample_data/ft/prom-core/$KMER
export PREDICTION_PATH=../data/jayavulu/result #./ft/prom-core/$KMER
export MOTIF_PATH=../data/jayavulu/result

python find_motifs.py \
    --data_dir $DATA_PATH \
    --predict_dir $PREDICTION_PATH \
    --window_size 24 \
    --min_len 5 \
    --pval_cutoff 0.005 \
    --min_n_motif 3 \
    --align_all_ties \
    --save_file_dir $MOTIF_PATH \
    --verbose