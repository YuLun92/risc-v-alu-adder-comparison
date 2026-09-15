# Final Adder Architecture Comparison

| Architecture | Mapped Cells | Logic Depth |
|---|---:|---:|
| RCA | 1148 | 74 |
| CSLA | 1208 | 33 |
| CLA | 1240 | 28 |

## Relative to RCA

- CSLA increases mapped cell count by approximately 5.2%.
- CLA increases mapped cell count by approximately 8.0%.
- CSLA reduces the ABC logic-depth proxy by approximately 55.4%.
- CLA reduces the ABC logic-depth proxy by approximately 62.2%.

## Observation

RCA provides the lowest hardware complexity but has the longest logic depth.
CLA achieves the shortest logic depth at the cost of increased hardware resources.
CSLA provides an intermediate trade-off between RCA and CLA.

Note: ABC logic depth is a structural logic-level proxy and does not represent actual propagation delay in nanoseconds.
