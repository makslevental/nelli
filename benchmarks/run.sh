set -e -x

export PYTHONPATH=../

function sedinplace {
  if ! sed --version 2>&1 | grep -i gnu >/dev/null; then
    sed -i '' "$@"
  else
    sed -i "$@"
  fi
}

# python conv_cuda.py | tee cuda.csv
# sedinplace -i '/^$/d' cuda.csv
# sedinplace 's/^,//g' cuda.csv

python conv_vulkan.py | tee vulkan.csv
python conv_openmp.py | tee openmp.csv
python conv_pytorch.py | tee pytorch.csv
sedinplace '/^$/d' vulkan.csv
sedinplace 's/^,//g' vulkan.csv
sedinplace '/^$/d' openmp.csv
sedinplace 's/^,//g' openmp.csv
