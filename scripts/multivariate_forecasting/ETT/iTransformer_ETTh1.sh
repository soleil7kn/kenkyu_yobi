export CUDA_VISIBLE_DEVICES=1

model_name=iTransformer

python -u run.py \
  --is_training 1 \ # 0:保存済みモデルを使って予測する、1:モデルを学習する
  --root_path ../dataset/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_96 \
  --model $model_name \
  --data ETTh1 \
  --features M \ # 予測方法 S:単変量予測、M:多変量予測、MS:多変量→単変量予測
  --seq_len 96 \ # 過去系列の長さ
  --pred_len 96 \ # 予測系列の長さ
  --e_layers 2 \ # エンコーダの層数
  --enc_in 7 \ # エンコーダの入力次元数
  --dec_in 7 \ # デコーダの入力次元数
  --c_out 7 \ # 出力次元数
  --des 'Exp' \
  --d_model 256 \ # モデルで使用する特徴ベクトルの次元数
  --d_ff 256 \ # FFNの中間層の次元数
  --itr 1

python -u run.py \
  --is_training 1 \
  --root_path ../dataset/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_192 \
  --model $model_name \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --pred_len 192 \
  --e_layers 2 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --d_model 256 \
  --d_ff 256 \
  --itr 1

python -u run.py \
  --is_training 1 \
  --root_path ../dataset/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_336 \
  --model $model_name \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --pred_len 336 \
  --e_layers 2 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --itr 1

python -u run.py \
  --is_training 1 \
  --root_path ../dataset/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_96_720 \
  --model $model_name \
  --data ETTh1 \
  --features M \
  --seq_len 96 \
  --pred_len 720 \
  --e_layers 2 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --itr 1