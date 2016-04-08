#!/usr/bin/env bash

# If CAFFE_DIR not set, try to guess
if [[ -z $CAFFE_DIR ]]; then
    export CAFFE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
fi

case `uname -n` in 
    (nudot)
	echo Setting up for nudot...
	ln -sf $CAFFE_DIR/Makefile.config.nudot $CAFFE_DIR/Makefile.config
	;;
    (wu)
	echo Setting up for wu...
	if [[ -z $WU_LARBYS_CONFIG ]]; then
	    source /etc/larbys.sh
	fi
	ln -sf $CAFFE_DIR/Makefile.config.wu $CAFFE_DIR/Makefile.config
	;;
    (*)
	echo Unknown machine... Using default
	ln -sf $CAFFE_DIR/Makefile.config.example $CAFFE_DIR/Makefile.config
	;;
esac

