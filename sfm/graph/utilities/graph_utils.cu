// Copyright (c) Meta Platforms, Inc. and affiliates.

/*
 * Copyright (c) 2020, NVIDIA CORPORATION.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#include <sfm/graph/utilities/graph_utils.cuh>

namespace sfm {
namespace graph {
namespace detail {
template __device__ float parallel_prefix_sum(int32_t, int32_t const *,
                                              float const *);
template __device__ double parallel_prefix_sum(int32_t, int32_t const *,
                                               double const *);
template __device__ float parallel_prefix_sum(int64_t, int32_t const *,
                                              float const *);
template __device__ double parallel_prefix_sum(int64_t, int32_t const *,
                                               double const *);
template __device__ float parallel_prefix_sum(int64_t, int64_t const *,
                                              float const *);
template __device__ double parallel_prefix_sum(int64_t, int64_t const *,
                                               double const *);

template void offsets_to_indices<int, int>(int const *, int, int *);
template void offsets_to_indices<long, int>(long const *, int, int *);
template void offsets_to_indices<long, long>(long const *, long, long *);

template __global__ void offsets_to_indices_kernel<int, int>(int const *, int,
                                                             int *);
template __global__ void offsets_to_indices_kernel<long, int>(long const *, int,
                                                              int *);
template __global__ void offsets_to_indices_kernel<long, long>(long const *,
                                                               long, long *);

} // namespace detail
} // namespace graph
} // namespace sfm
