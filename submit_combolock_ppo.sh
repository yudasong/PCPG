#!/bin/bash

for env in comblockdense; do
for horizon in 30; do
for alg in ppo; do
for lr in 1e-3; do
for bonus_coeff in 1000.0; do
for seed in 1; do
	python run.py -env $env -alg $alg -bonus_coeff $bonus_coeff -horizon $horizon \
	       -seed $seed -lr $lr -env_temperature 1

done
done
done
done
done
done