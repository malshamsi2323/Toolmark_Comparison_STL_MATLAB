# Toolmark Comparison STL MATLAB

This repository contains MATLAB code for toolmark comparison using Cross-Correlation Function (CCF) analysis. The code is designed to analyze and compare striated toolmarks from 3D scans in STL format, providing quantitative measures of similarity between different toolmarks.

## Project Description

Toolmark comparison is a critical aspect of forensic science, particularly in ballistics and tool mark analysis. This MATLAB implementation provides a comprehensive solution for comparing toolmarks using advanced signal processing techniques. The code processes 3D scan data from STL files, extracts relevant signals, and performs cross-correlation analysis to determine the similarity between different toolmarks.

The software includes functionality for:
- Processing and analyzing 3D STL files of toolmarks
- Extracting signal profiles from the 3D data
- Performing cross-correlation analysis between different toolmarks
- Calculating best correlation and optimal alignment between signals
- Visualizing results through various plots and graphs
- Generating correlation matrices for multiple comparisons
- Calculating roughness parameters for surface characterization

## How to Use

### Prerequisites
- MATLAB (developed and tested with recent versions)
- STL files of toolmark scans (not included in this repository)

### Setup
1. Clone this repository to your local machine
2. Open MATLAB and navigate to the repository's `src` directory
3. Create a `data` subdirectory and place your STL files there

### Running the Analysis
1. Open the main script `CCF_StriatedMarks_V4.mlx` in MATLAB
2. The script is configured to read and process all STL files in the `./data` directory
3. Adjust parameters as needed:
   - `plot_figures`: Set to true to generate plots
   - `display_figure`: Set to true to display figures in MATLAB
   - `save_figure`: Set to true to save figures as PNG files
   - `dir_data`: Directory containing STL files (default: './data')
   - `dir_img`: Directory for saving output images (default: './figures')

4. Run the script to perform the analysis
5. Results will be displayed and/or saved according to your parameter settings
6. Correlation matrices are saved in Excel format for further analysis

### Key Functions

The code is organized into several modules:

- **Main Script**: `CCF_StriatedMarks_V4.mlx` - Orchestrates the entire analysis process

- **Processing Functions**:
  - `compare_marks.m`: Compares two toolmark signals
  - `best_correlation.m`: Finds optimal correlation and alignment between signals
  - `cross_correlation.m`: Performs cross-correlation analysis
  - `getSignals.m`: Extracts signal profiles from 3D data
  - `getPointsGrids.m`: Processes point cloud data into usable grids
  - `roughness.m`: Calculates surface roughness parameters
  - `comparison_data.m`: Handles data for comparison analysis

- **Visualization Functions**:
  - `plot_correlation_matrix.m`: Visualizes correlation matrices
  - `plot_gridsurface.m`: Creates surface plots from grid data
  - `plot_selected_signals.m`: Plots selected signal profiles
  - `plot_signals.m`: General signal plotting function
  - `plot_trisurface.m`: Creates triangulated surface plots
  - `setFigHeight.m`: Utility for setting figure dimensions

## Example STL Files

This repository does not include example STL files. To use this code, you will need to provide your own STL files of toolmark scans. These can be obtained through:

- 3D scanning of physical toolmarks using appropriate equipment
- Generating synthetic toolmarks through simulation software
- Obtaining sample data from forensic databases (subject to access restrictions)

Place your STL files in a `data` directory within the `src` folder to use them with the provided code.

## Citation and Credits

This toolmark comparison code was hosted by Mohammad A. AlShamsi of Dubai Police. If you use this code in your research or forensic work, please include the following citation:

```
AlShamsi, M. A. (Dubai Police). Toolmark Comparison STL MATLAB. 
GitHub repository: https://github.com/yourusername/Toolmark_Comparison_STL_MATLAB
```

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contributing

Contributions to improve the code are welcome. Please feel free to submit issues or pull requests through GitHub Discussions and Issues.
