import csv
import matplotlib.pyplot as plt

architectures = []
logic_depth = []

with open("results/final_results.csv", newline="") as f:
    reader = csv.DictReader(f)

    for row in reader:
        architectures.append(row["Architecture"])
        logic_depth.append(int(row["Logic_Depth"]))

plt.figure(figsize=(7, 5))
plt.bar(architectures, logic_depth)

plt.title("Logic Depth Comparison")
plt.xlabel("Adder Architecture")
plt.ylabel("ABC Logic Depth")

for i, value in enumerate(logic_depth):
    plt.text(i, value + 1, str(value), ha="center")

plt.tight_layout()
plt.savefig("figures/logic_depth.png", dpi=300)
plt.close()
