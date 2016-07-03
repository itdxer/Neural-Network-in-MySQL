DROP DATABASE IF EXISTS nnet;
CREATE DATABASE nnet;
USE nnet;

CREATE TABLE Dataset (
    RowIndex INT NOT NULL,
    ColumnIndex INT NOT NULL,
    CellValue DOUBLE(10, 7),

    PRIMARY KEY (RowIndex, ColumnIndex)
);

INSERT INTO Dataset VALUES
-- Feature #1, Feature #2, Feature #3 (for Bias, always equal to 1)
(1, 1, 0.9845149), (1, 2, 1.9521154), (1, 3, 1),
(2, 1, 1.6520906), (2, 2, 2.1201087), (2, 3, 1),
(3, 1, 1.7373078), (3, 2, 4.4254623), (3, 3, 1),
(4, 1, 2.4703492), (4, 2, 4.0986291), (4, 3, 1),
(5, 1, 2.1217847), (5, 2, 1.2001356), (5, 3, 1),
(6, 1, 3.1946682), (6, 2, -0.3371622), (6, 3, 1),
(7, 1, 3.9384182), (7, 2, -0.4500954), (7, 3, 1),
(8, 1, 2.0657675), (8, 2, 2.6835342), (8, 3, 1),
(9, 1, 2.0270853), (9, 2, 1.3259955), (9, 3, 1),
(10, 1, -0.7300001), (10, 2, 6.2545627), (10, 3, 1),
(11, 1, 2.2065608), (11, 2, 5.5061672), (11, 3, 1),
(12, 1, -0.2765253), (12, 2, 5.0812777), (12, 3, 1),
(13, 1, 1.1312175), (13, 2, 4.6819498), (13, 3, 1),
(14, 1, 1.1844704), (14, 2, 0.3188140), (14, 3, 1),
(15, 1, 1.8407063), (15, 2, 3.5616223), (15, 3, 1),
(16, 1, 1.2893378), (16, 2, 3.4496916), (16, 3, 1),
(17, 1, 0.5889433), (17, 2, 4.0014846), (17, 3, 1),
(18, 1, 2.4576092), (18, 2, 0.2128536), (18, 3, 1),
(19, 1, 0.0884843), (19, 2, 2.3229909), (19, 3, 1),
(20, 1, 0.8730512), (20, 2, 4.7143858), (20, 3, 1),
(21, 1, 1.4209454), (21, 2, 0.5349225), (21, 3, 1),
(22, 1, 2.4116339), (22, 2, 1.6042368), (22, 3, 1),
(23, 1, 1.1479692), (23, 2, 0.9496091), (23, 3, 1),
(24, 1, 1.3828071), (24, 2, 0.5381105), (24, 3, 1),
(25, 1, 2.7843581), (25, 2, 1.0266466), (25, 3, 1),
(26, 1, 3.2460247), (26, 2, 2.8494217), (26, 3, 1),
(27, 1, 0.4666179), (27, 2, 3.8657130), (27, 3, 1),
(28, 1, -1.5767197), (28, 2, 4.9574059), (28, 3, 1),
(29, 1, 2.2326937), (29, 2, 0.4958827), (29, 3, 1),
(30, 1, 2.8438281), (30, 2, 3.3265094), (30, 3, 1),
(31, 1, 2.2635425), (31, 2, 1.8743027), (31, 3, 1),
(32, 1, 0.0808035), (32, 2, 4.6906898), (32, 3, 1),
(33, 1, 1.4201333), (33, 2, 4.6374617), (33, 3, 1),
(34, 1, -0.6376278), (34, 2, 4.0910470), (34, 3, 1),
(35, 1, 2.5090493), (35, 2, 5.7731461), (35, 3, 1),
(36, 1, 1.7437150), (36, 2, 0.9538290), (36, 3, 1),
(37, 1, 2.1821796), (37, 2, 1.2996530), (37, 3, 1),
(38, 1, 1.1203136), (38, 2, 5.7580608), (38, 3, 1),
(39, 1, 2.5209300), (39, 2, -0.6385800), (39, 3, 1),
(40, 1, 0.4654649), (40, 2, 3.1231551), (40, 3, 1),
(41, 1, 0.4250692), (41, 2, 1.3604459), (41, 3, 1),
(42, 1, 1.9263585), (42, 2, 4.1524301), (42, 3, 1),
(43, 1, 1.2421212), (43, 2, -0.8286189), (43, 3, 1),
(44, 1, 0.8901177), (44, 2, 1.7984901), (44, 3, 1),
(45, 1, 1.0220286), (45, 2, 4.1166035), (45, 3, 1),
(46, 1, 0.7847825), (46, 2, 1.8670604), (46, 3, 1),
(47, 1, 3.5435197), (47, 2, 2.7935528), (47, 3, 1),
(48, 1, -0.0722829), (48, 2, 2.8837694), (48, 3, 1),
(49, 1, 3.2340471), (49, 2, 0.7177388), (49, 3, 1),
(50, 1, 0.6283579), (50, 2, 4.4601363), (50, 3, 1);


CREATE TABLE DatasetClass (
    RowIndex INT NOT NULL,
    Class INT,
    PRIMARY KEY (RowIndex)
);

INSERT INTO DatasetClass VALUES
(1, 1),
(2, 1),
(3, 0),
(4, 0),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 1),
(15, 0),
(16, 0),
(17, 0),
(18, 1),
(19, 0),
(20, 0),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 0),
(27, 0),
(28, 0),
(29, 1),
(30, 0),
(31, 1),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 1),
(37, 1),
(38, 0),
(39, 1),
(40, 0),
(41, 1),
(42, 0),
(43, 1),
(44, 1),
(45, 0),
(46, 1),
(47, 1),
(48, 0),
(49, 1),
(50, 0);

CREATE TABLE Parameters (
    RowIndex INT NOT NULL,
    ColumnIndex INT NOT NULL,
    Weight DECIMAL(10, 7),
    PRIMARY KEY (RowIndex, ColumnIndex)
);
INSERT INTO Parameters VALUES
(1, 1, RAND(123) - 0.5), -- Weight #1
(2, 1, RAND(234) - 0.5), -- Weight #2
(3, 1, RAND(345) - 0.5); -- Bias

DELIMITER //
CREATE FUNCTION SIGMOID(x DECIMAL(10, 7))
    RETURNS DECIMAL(10, 7)
    READS SQL DATA
    DETERMINISTIC
    BEGIN
        RETURN 1 / (1 + EXP(-x));
    END//

CREATE FUNCTION CLIP(x DECIMAL(10, 7), MinimumValue DECIMAL(10, 7), MaximumValue DECIMAL(10, 7))
    RETURNS DECIMAL(10, 7)
    READS SQL DATA
    DETERMINISTIC
    BEGIN
        RETURN LEAST(GREATEST(x, MinimumValue), MaximumValue);
    END//

CREATE FUNCTION CROSSENTROPY(Target INT, Output DECIMAL(10, 7))
    RETURNS DECIMAL(10, 7)
    READS SQL DATA
    DETERMINISTIC
    BEGIN
        RETURN -(
            Target * LOG(CLIP(Output, 1e-7, 1 - 1e-7)) +
            (1 - Target) * LOG(CLIP(1 - Output, 1e-7, 1 - 1e-7))
        );
    END//

CREATE FUNCTION GRAD_CROSSENTROPY(Target INT, Output DECIMAL(10, 7))
    RETURNS DECIMAL(20, 7)
    READS SQL DATA
    DETERMINISTIC
    BEGIN
        RETURN -Target / CLIP(Output, 1e-7, 1 - 1e-7) +
               (1 - Target) / CLIP(1 - Output, 1e-7, 1 - 1e-7);
    END//

CREATE PROCEDURE TrainNetwork(Epochs INT, Step DECIMAL(10, 7))
BEGIN
    DECLARE i INT;
    SET i = 1;

    WHILE i <= Epochs DO
        SET i = i + 1;

        UPDATE Parameters
        LEFT JOIN (
            SELECT
                Dataset.ColumnIndex,
                AVG(R.IncompleteGradient * CellValue) as Gradient
            FROM(
                SELECT
                    Result.RowIndex,
                    Result.ColumnIndex,
                    -- Cannot compute full gradient, because we need to make a dot
                    -- product procedure which involves grouping operartion with
                    -- the dataset table.
                    GRAD_CROSSENTROPY(DatasetClass.Class, Output) * Output * (1 - Output) as IncompleteGradient
                FROM (
                    -- Compute output from the network
                    SELECT
                        Dataset.RowIndex,
                        Parameters.ColumnIndex,
                        SIGMOID(SUM(Weight * CellValue)) as Output
                    FROM Dataset
                    CROSS JOIN Parameters ON Dataset.ColumnIndex = Parameters.RowIndex
                    GROUP BY Dataset.RowIndex, Parameters.ColumnIndex
                ) as Result
                LEFT JOIN DatasetClass
                ON DatasetClass.RowIndex = Result.RowIndex
            ) as R
            CROSS JOIN Dataset ON Dataset.RowIndex = R.RowIndex
            GROUP BY R.ColumnIndex, Dataset.ColumnIndex
        ) as Updates
        ON Updates.ColumnIndex = Parameters.RowIndex
        SET Weight = Weight - Step * Updates.Gradient;
    END WHILE;
END//
DELIMITER ;

CALL TrainNetwork(7000, 0.01);

-- Check the prediction accuracy score
SELECT
    AVG(CAST(Class AS UNSIGNED) = ROUND(Result.Output)) as Accuracy
FROM (
    SELECT
        Dataset.RowIndex,
        SIGMOID(SUM(Weight * CellValue)) as Output
    FROM Dataset
    CROSS JOIN Parameters
        ON Dataset.ColumnIndex = Parameters.RowIndex
    GROUP BY Dataset.RowIndex, Parameters.ColumnIndex
) as Result
LEFT JOIN DatasetClass
ON DatasetClass.RowIndex = Result.RowIndex;
