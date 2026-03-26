# COVID-19 Deaths Forecasting — JHU CSSE Format

**Data format:** JHU CSSE `time_series_covid19_deaths_US.csv`  
- Header row present  
- Location hierarchy: `Country_Region` → `Province_State` → `Admin2` (cols 6, 7, 8 / 0-indexed)  
- Time series starts at column index 12, column name `1/22/20`  
- Daily cumulative death counts (we'll convert to daily deltas)  
**Forecast:** 90 days ahead using a 2-layer LSTM wrapped in a HuggingFace-style Pipeline

**Artifacts:**
- Two notebooks
  - *covid-lstm-jhu.ipynb*:  An RNN-LSTM model with minimal comments, minimal context stored.
    - stored as: covid_lstm_jhu.pt  covid_scaler_jhu.pkl 
  - *covid-lstm-jhu.ipynb*:  The same RNN-LSTM with extensive comments, and extensive context stored.
    - Designed for fast/low cost context recovery (i.e. context rehydration).
    - stored as:  


