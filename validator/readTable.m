
    imo = detectImportOptions(specsFile, "fileType", "delimitedText", "delimiter", ",", "textType", "string");
    imo.VariableTypes(:) = {'string'};
    t = readtable(specsFile, imo);
    disp(t.Properties.VariableNames)
    
