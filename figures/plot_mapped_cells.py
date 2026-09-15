import csv
import matplotlib.pyplot as plt

architectures = []
mapped_cells = []

with open("results/final_results.csv", newline="") as f:
    reader = csv.DictReader(f)

    for row in reader:
        architectures.append(row["Architecture"])
        mapped_cells.append(int(row["Mapped_Cells"]))

plt.figure(figsize=(7, 5))
plt.bar(architectures, mapped_cells)

plt.title("Mapped Cell Count Comparison")
plt.xlabel("Adder Architecture")
plt.ylabel("Mapped Cells")

for i, value in enumerate(mapped_cells):
    plt.text(i, value + 10, str(value), ha="center")

plt.tight_layout()
plt.savefig("figures/mapped_cells.png", dpi=300)
plt.close()
