#!/usr/bin/env bash

set -e

WHERE_YOU_INSTALLED_BLENDER='/data/vision/billf/shapetime/new1/software'
ROOT='/data/vision/billf/intrinsic/nlt'

"$WHERE_YOU_INSTALLED_BLENDER"/blender-2.78c-linux-glibc219-x86_64/blender \
    --background \
    --python "$ROOT"/neural-light-transport/data_gen/private/gen_test_cams_lights.py \
    -- \
    --scene="$ROOT"/data/scenes/dragon_specular.blend \
    --trainvali_cams="$ROOT"'/data/trainvali_cams/*.json' \
    --trainvali_lights="$ROOT"'/data/trainvali_lights/*.json' \
    --cam_outdir="$ROOT"'/data/test_cams/' \
    --light_outdir="$ROOT"'/data/test_lights/'