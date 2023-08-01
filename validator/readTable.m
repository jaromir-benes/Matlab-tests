
    specsFile = "input-data-validator.csv";
    options = {"fileType", "delimitedText", "delimiter", ",", "textType", "string"};
    try
        imo = detectImportOptions(specsFile, options{:}, "variableNamingRule", "preserve");
    catch
        imo = detectImportOptions(specsFile, options{:}, "preserveVariableNames", true);
    end
    imo.VariableTypes(:) = {'string'};
    t = readtable(specsFile, imo);
    diary output.txt
    disp(t.Properties.VariableNames)
    diary off

