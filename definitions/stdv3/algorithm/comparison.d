module stdv3.algorithm.comparison;

uint among(alias pred = (a, b) => a == b, Value, Values...)
    (Value value, Values values);

T1 clamp(T)(T val, T lower, T upper);

int cmp(R1, R2)(R1 r1, R2 r2);
int cmp(alias pred, R1, R2)(R1 r1, R2 r2);

bool equal(alias pred = "a == b", Ranges...)(Ranges rs);

size_t levenshteinDistance(alias equals = (a,b) => a == b, Range1, Range2)
    (Range1 s, Range2 t);

Tuple!(size_t, EditOp[])
levenshteinDistanceAndPath(alias equals = (a,b) => a == b, Range1, Range2)
    (Range1 s, Range2 t);

auto max(T...)(T args);
auto min(T...)(T args);

bool isPermutation(Range1, Range2)(Range1 r1, Range2 r2);
