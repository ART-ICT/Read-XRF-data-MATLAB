% Code (c) Su Yan, Imperial College London, 17 November 2022
% s.yan18@imperial.ac.uk

function data_cube=load_edf_files(Size, Dim_1, Dim_2)

% A function used to read '*.edf' files created by 'DataMuncher' software.

% Once calling the function, a dialog box will pop up to select the '*.edf'
% files, which allows both single and multiple file selection.

% The input parameters (Size, Dim_1, Dim_2) can be found from any of the 
% '*.edf' files opened with 'Notepad'.
%   For example: 
%       Size=5697536;
%       Dim_1=4096;
%       Dim_2=1391;

% This is in part of the EPSRC-funded ARTICT (Art Through the ICT Lens: Big
% Data Processing Tools to Support the Technical Study, Preservation and
% Conservation of Old Master Paintings) project (EP/R032785/1). 
% More information: https://art-ict.github.io/artict/home.html

% Relevent papers:

% S. Yan, J.J. Huang, N. Daly, C. Higgitt, and P.L. Dragotti, "When de
% Prony Met Leonardo: An Automatic Algorithm for Chemical Element
% Extraction From Macro X-Ray Fluorescence Data," IEEE Transactions on
% Computational Imaging, vol. 7, pp. 908–924, 2021.

% S. Yan, J.J. Huang, N. Daly, C. Higgitt, and P.L. Dragotti, “Revealing
% Hidden Drawings in Leonardo s  the Virgin of the Rocks’ from Macro X-Ray
% Fluorescence Scanning Data through Element Line Localisation,” in ICASSP
% 2020-2020 IEEE International Conference on Acoustics, Speech and Signal
% Processing (ICASSP). IEEE, 2020, pp. 1444–1448.


[load_file_name,load_path,~] = uigetfile('*.edf','MultiSelect','on');

if iscell(load_file_name)
    row_num=length(load_file_name);
    data_cube=zeros(Dim_1,Dim_2,row_num);
    for i=1:row_num
        fileID  = fopen([load_path, load_file_name{i}],'r');
        data_cube_slice = fread(fileID);
        data_cube_slice=reshape(data_cube_slice(end-Size+1:end),[Dim_1,Dim_2]);
        data_cube(:,:,i)=data_cube_slice; 
        fclose(fileID);
    end
else
    data_cube=zeros(Dim_1,Dim_2);
    fileID  = fopen([load_path, load_file_name],'r');
    data_cube_slice = fread(fileID);
    data_cube_slice=reshape(data_cube_slice(end-Size+1:end),[Dim_1,Dim_2]);
    data_cube=data_cube_slice;
    fclose(fileID);
end
