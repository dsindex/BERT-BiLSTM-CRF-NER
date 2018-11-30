rm -rf ./output
mkdir -p output/result_dir
rm -rf data.conf

CDIR=`pwd`

python bert_lstm_ner.py   \
        --bert_path=${CDIR}/checkpoint \
        --root_path=${CDIR} \
        --task_name="NER"  \
        --do_train=True   \
        --do_predict=True \
        --data_dir=NERdata  \
        --vocab_file=checkpoint/vocab.txt  \
        --do_lower_case=False \
        --bert_config_file=checkpoint/bert_config.json \
        --init_checkpoint=checkpoint/bert_model.ckpt   \
        --max_seq_length=150   \
        --train_batch_size=32   \
        --learning_rate=2e-5   \
        --num_train_epochs=30   \
        --output_dir=./output/result_dir/