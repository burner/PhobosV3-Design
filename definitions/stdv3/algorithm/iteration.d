module stdv3.algorithm.iteration;

auto map(alias fun, Range)(Range r);
auto filter(alias predicate , Range)(Range range);
Group!(pred, Range) group(alias pred = "a == b", Range)(Range r);
auto chunkBy(alias pred, Range)(Range r);
