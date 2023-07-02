# Lightning Template

```
copper_train --help
```

examples

- `copper_train data.num_workers=16`
- `copper_train data.num_workers=16 trainer.deterministic=True +trainer.fast_dev_run=True`

## Development

Install in dev mode

```
pip install -e .
```

### Docker

# Project Setup
    $ git clone https://github.com/Manojd664/emlo4-lightning.git

    $ cd emlo4-lightning

    $ pip  install -r requirements.txt

# Building Steps

    $ python setup.py sdist bdist_wheel
    
    # wheel file location ./dist/copper-0.0.1-py3-none-any.whl

# For training

    $ python3 copper/train.py +experiment=cifar10_example

# Docker Image Building
    $ docker build -t manojd664/emlo4-lightning .

# Pull Image from Docker Hub
    $ docker pull manojd664/emlo4-lightning:latest

# For training through docker
    $ docker run -it --volume /workspace/emlo4-lightning:/opt manojd664/emlo4-lightning:latest python train.py +experiment=cifar10_example


# For evaluating through docker
    $ docker run -it --volume /workspace/emlo4-lightning:/opt manojd664/emlo4-lightning:latest python eval.py +experiment=cifar10_example

# For Infering 
    $copper_infer experiment=cat_dog data.num_workers=16
