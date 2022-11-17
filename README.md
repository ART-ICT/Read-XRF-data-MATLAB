# Read-XRF-data-MATLAB
This is the code of MATLAB functions for reading the data collected with XRF devices (such as Bruker M6 JETSTREAM), including **'\*.raw'** and **'\*.edf'** files.

This is in part of the EPSRC-funded ARTICT "Art Through the ICT Lens: Big Data Processing Tools to Support the Technical Study, Preservation and Conservation of Old Master Paintings" project (EP/R032785/1). 

More information: https://art-ict.github.io/artict/home.html

# Relevent papers
\[1\] S. Yan, J. -J. Huang, N. Daly, C. Higgitt and P. L. Dragotti, "When de Prony Met Leonardo: An Automatic Algorithm for Chemical Element Extraction From Macro X-Ray Fluorescence Data," in IEEE Transactions on Computational Imaging, vol. 7, pp. 908-924, 2021, [doi: 10.1109/TCI.2021.3102820](https://ieeexplore.ieee.org/document/9511278).

\[2\] S. Yan, J. Huang, N. Daly, C. Higgitt and P. L. Dragotti, "Revealing Hidden Drawings in Leonardo’s ‘the Virgin of the Rocks’ from Macro X-Ray Fluorescence Scanning Data through Element Line Localisation," ICASSP 2020 - 2020 IEEE International Conference on Acoustics, Speech and Signal Processing (ICASSP), 2020, pp. 1444-1448, [doi: 10.1109/ICASSP40776.2020.9054460](https://ieeexplore.ieee.org/document/9054460).

# How to start
Simply download the code script you need and call it as a function in MATLAB.

[**'load_raw_file.m'**](https://github.com/Su828/Read-XRF-data-MATLAB/blob/main/load_raw_file.m) reads the **'\*.raw'** files output from XRF devices (such as Bruker M6 JETSTREAM), whose input parameters (width, height, depth) can be found from the **'\*.rpl'** file opened with 'Notepad'.<br />
&nbsp;&nbsp;&nbsp;&nbsp; For example: <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; width = 534;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; height = 539;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; depth = 4096;<br />

[**'load_edf_files.m'**](https://github.com/Su828/Read-XRF-data-MATLAB/blob/main/load_edf_files.m) reads the **'\*.edf'** files created by 'DataMuncher' software, whose input parameters (Size, Dim_1, Dim_2) can be found from any of the **'\*.edf'** files opened with 'Notepad'.<br />
&nbsp;&nbsp;&nbsp;&nbsp; For example: <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Size=5697536;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dim_1=4096;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dim_2=1391;<br />
