# COVID-19 Deaths Forecasting — JHU CSSE Format
### Run the ipynb to understand the model.  The comments are extensive.
---
**Data format:** JHU CSSE `time_series_covid19_deaths_US.csv`  
- Header row present  
- Location hierarchy: `Country_Region` → `Province_State` → `Admin2` (cols 6, 7, 8 / 0-indexed)  
- Time series starts at column index 12, column name `1/22/20`  
- Daily cumulative death counts (we'll convert to daily deltas)
- The JHU datasets are small:  ~4100 locations, for ~1000+ time-points and 10 fields -> 10^8 Bytes max.
**Forecast:** 90 days ahead using a 2-layer LSTM wrapped in a HuggingFace-style Pipeline

## Artifacts
- This repos currently contains 2 notebooks
  - `covid-lstm-jhu.ipynb`:  An RNN-LSTM model with minimal comments, minimal context stored.
    - Context saved as:
      - covid_lstm_jhu.pt
      - covid_scaler_jhu.pkl 
  - `covid-lstm-jhu.ipynb-commented`:  The same RNN-LSTM with extensive comments, and extensive context stored.
    - Designed for fast/low cost context recovery (i.e. context rehydration).
    - Context saved as:
      - covid_lstm_jhu.pt
      - covid_scaler_jhu.pkl
      - covid_metadata_jhu.pkl
      
- **Caveat**:  the two notebooks write to the same pyTorch (.pt) and pickle (.pkl) filenames.  You might want to change that if you run these notebooks side-by-side or if you run them for different locations.

## Docker container
These Jupyter notebooks were created on Docker containers.  They were built and run on latest quay containers on March 26, 2026.  The following bash .sh file was used:  ***docker/run-scipy-docker-container.sh***

The containers used run 
  - Juypter,
  - conda,
  - huggingface transformers,
  - pytorch,
  - scikit.
  
The datasets are small:  4100 locations, 1000+ time-points per location and 10+ fields per time point.  
The current notebook was run on just mortality data.




