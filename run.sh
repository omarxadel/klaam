#!/usr/bin/env bash
python run_classifier.py \
    --model_name_or_path="facebook/wav2vec2-large-xlsr-53" \
    --output_dir=/content/model_dir/dialects \
    --cache_dir=/content/data_dir/ \
    --overwrite_output_dir \
    --freeze_feature_extractor \
    --num_train_epochs="20" \
    --per_device_train_batch_size="8" \
    --preprocessing_num_workers="1" \
    --learning_rate="3e-5" \
    --warmup_steps="1" \
    --evaluation_strategy="steps"\
    --save_steps="100" \
    --eval_steps="13" \
    --save_total_limit="1" \
    --logging_steps="13" \
    --group_by_length \
    --gradient_checkpointing \
    --do_eval \
    --do_train \
    --max_train_samples 100 \
    --max_val_samples 100 \
