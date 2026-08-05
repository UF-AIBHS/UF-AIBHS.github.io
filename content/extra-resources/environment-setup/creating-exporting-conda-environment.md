
# Creating & Exporting a Conda Environment

Keep this course's packages isolated and reproducible.

## 1. Open a Terminal

- Anaconda Navigator → Environments tab has a play button that opens a terminal
- Or open your OS's terminal / command prompt directly
- Confirm conda is available:

```
conda --version
```

## 2. Create the Environment

Create a new environment named `ds-course` with Python 3.11:

```
conda create -n ds-course python=3.11
```

## 3. Activate the Environment

Switch your shell into the new environment:

```
conda activate ds-course
```

## 4. Install Packages

Install the core packages this course needs:

```
conda install jupyter numpy pandas matplotlib
```

## 5. Export the Environment

Export it to a file, so it can be shared or restored later:

```
conda env export > environment.yml
```

## 6. Recreate It Elsewhere

On another machine, rebuild the identical environment from that file:

```
conda env create -f environment.yml
```
