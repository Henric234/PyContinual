$env:TRANSFORMERS_CACHE = ".\model_cache"
$env:HF_DATASETS_CACHE = ".\dataset_cache"

foreach ($id in 0) {
    python .\run.py `
        --bert_model 'bert-base-uncased' `
        --backbone bert_adapter `
        --baseline classic `
        --task asc `
        --eval_batch_size 16 `
        --train_batch_size 16 `
        --scenario dil_classification `
        --idrandom $id `
        --use_predefine_args
}