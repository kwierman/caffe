#ifndef CAFFE_UTIL_ROOT_H_
#define CAFFE_UTIL_ROOT_H_

#include <string>

//LArCV
#include "DataFormat/IOManager.h"
#include "DataFormat/EventImage2D.h"
#include "DataFormat/EventROI.h"

//Caffe
#include "caffe/blob.hpp"

namespace caffe {

  
  template <typename Dtype>
  void root_load_data(::larcv::IOManager* iom,
		      Blob<Dtype>* data_blob,
		      Blob<Dtype>* label_blob);
  
  
}  // namespace caffe

#endif   // CAFFE_UTIL_ROOT_H_
