#!/bin/sh

env=$1

export KERAS_BACKEND=theano

./run_pg.py \
    --env=$env \
    --outfile=$env.h5 \
    --agent modular_rl.agentzoo.TrpoAgent \
    --load_agent agentsnapshot-000234.pickle \
    --gamma=0.995 \
    --lam=0.97 \
    --max_kl=0.01 \
    --cg_damping=0.1 \
    --activation=tanh \
    --seed=0 \
    --use_hdf=1 \
    --snapshot_every=1 \
    --timesteps_per_batch=1000 \
    --parallel=4 \
    --profile=0 \
    --video=0 \
    --n_iter=10
