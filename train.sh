
for rr in '0.3' '0.6'
do
  for onon in '0' '0.25' '0.5' '0.75' '1'
  do
    echo "Running r:" ${rr} "on:" ${onon}
    python Train_cifar.py --r ${rr} --on ${onon} --noisy_dataset cifar100 \
     --data_path ./../dataset/cifar10/cifar-10-batches-py \
     --noise_data_dir ./../dataset/cifar100/cifar-100-python
  done
done