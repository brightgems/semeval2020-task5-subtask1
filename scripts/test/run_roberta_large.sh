CUDA_VISIBLE_DEVICES=1,6 python -m torch.distributed.launch --nproc_per_node 2 run_transformers.py   \
    --task_name semeval-2020-task5-subtask1 \
    --data_dir "data/SemEval-2020-Task5/" \
    --model_type roberta \
    --model_name_or_path "output/SemEval-2020-Task5/roberta-large/finetuned_with_pseudo_labels/final_model/seq_128_batch_8_epochs_3.0_lr_2e-05" \
    --output_dir "output/SemEval-2020-Task5/roberta-large/finetuned_with_pseudo_labels/final_model/seq_128_batch_8_epochs_3.0_lr_2e-05" \
    --do_test \
    --max_seq_length 128   \
    --per_gpu_eval_batch_size=32   \
    --per_gpu_train_batch_size=8   \
    --learning_rate 2e-5   \
    --num_train_epochs 3.0  \
    --overwrite_output_dir   \
    --overwrite_cache \