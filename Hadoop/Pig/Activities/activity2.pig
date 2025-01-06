-- Load input file from HDFS into the script
inputFile = LOAD 'hdfs:///user/lavanya/input.txt' AS (line);
-- Tokeize each word in the file (Map)
words = FOREACH inputFile GENERATE FLATTEN(TOKENIZE(line)) AS word;
-- Group the words(MAP)
grpd = GROUP words BY word;
-- Count the occurence of each word (Reduce)
totalcount = FOREACH grpd GENERATE group, COUNT(words);

--To remove old output folder
rmf hdfs:///user/lavanya/PigOutput1;

-- Store the result in HDFS
STORE totalcount INTO 'hdfs:///user/lavanya/PigOutput1';
