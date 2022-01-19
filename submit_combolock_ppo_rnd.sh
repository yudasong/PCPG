#!/bin/bash

for env in comblockvar; do
for horizon in 30; do
for alg in ppo-rnd; do
for lr in 1e-3; do
for bonus_coeff in 1000.0; do
for seed in 1 12 123 1234 12345; do
	python run.py -env $env -alg $alg -bonus_coeff $bonus_coeff -horizon $horizon \
	       -seed $seed -lr $lr -env_temperature

done
done
done
done
done
done
