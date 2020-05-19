import sys
from hashlib import sha1
import pandas as pd


def test_2_1(answer):
    assert 'pandas' in sys.modules, "Solution is incorrect, the pandas package needs to be imported. Try doing this with the import function."
    assert "pd" in answer, "Don't forget to use the pd alias when importing the pandas package!"
    assert 'altair' in sys.modules, "Solution is incorrect, the altair package needs to be imported. Try doing this with the import function."
    assert "alt" in answer, "Don't forget to use the alt alias when importing the altair package!"
    return "Success!"


def test_2_2(answer):
    assert answer is not None, 'You should assign a value of "A", "B", "C", or "D" to the answer2_2 object.'
    answer = answer.upper()
    assert sha1(str(answer).encode('utf8')).hexdigest() == '32096c2e0eff33d844ee6d675407ace18289357d', "Your answer is incorrect." # we hid the answer to the test here so you can't see it, but we can still run the test
    return "Success"


def test_2_3(answer):
    assert isinstance(answer, type(pd.DataFrame())), str(answer) + \
        " should be a pandas dataframe"
    assert len(answer) == 1833, "the number of rows in the dataframe should be 1833"
    assert len(answer.columns) == 5, "the number of columns in the dataframe should be 5."
    assert sorted(list(answer.columns.values)) == ['age',
                                                   'bmi',
                                                   'km10_time_seconds',
                                                   'km5_time_seconds',
                                                   'sex'], "The column names should be age, bmi, km10_time_seconds, km5_time_seconds and sex. Ensure the path used to load the data set is pointing to the race_times.csv in this directory."
    assert round(answer['bmi'].sum(), 2) == 43594.45,  "Your dataframe has the wrong summed values for the bmi column. Ensure the path used to load the data set is pointing to the race_times.csv in this directory."
    assert sha1(str(round(answer['age'].sum(), 1)).encode('utf8')).hexdigest() == '1abebafd12eaadc0c94d49614e8051372963fb2d', "Your dataframe has the wrong summed values for the age column. Ensure the path used to load the data set is pointing to the race_times.csv in this directory."
    return "Success"


def test_2_4(answer):
    assert isinstance(answer, type(pd.DataFrame())), str(answer) + \
        " should be a pandas dataframe"
    assert len(answer) == 532, "the number of rows in the dataframe should be 532"
    assert len(answer.columns) == 3, "the number of columns in the dataframe should be 3."
    assert sorted(list(answer.columns.values)) == ['bmi',
                                                   'km5_time_minutes',
                                                   'km5_time_seconds'], "The column names should be bmi, km5_time_seconds and km5_time_minutes."
    assert round(answer['bmi'].sum(), 2) == 12472.91,  "Your dataframe has the wrong summed values for the bmi column."
    assert sha1(str(round(answer['km5_time_minutes'].sum(), 1)).encode('utf8')).hexdigest() == 'dc58fc1c5ef101520470c641e39b867a185cf8c7', "Your dataframe has the wrong summed values for the km5_time_minutes column."
    return "Success"


def test_2_5(answer):
    assert str(type(answer)) == "<class 'altair.vegalite.v4.api.Chart'>", "Plot should be made using altair"
    assert (answer.encoding.x.shorthand == "bmi" or answer.encoding.x.field == "bmi"), "bmi should be mapped to the X-axis"
    assert (answer.encoding.y.shorthand == "km5_time_minutes" or answer.encoding.y.field == "km5_time_minutes"), "km5_time_minutes should be mapped to the X-axis"
    assert answer.mark.type == "circle", "mark_circle should be used to create the scatter plot"
    assert answer.encoding.y.title != "km5_time_minutes", "Y axes should be more human readable than the column name"
    assert answer.encoding.x.title != "bmi", "X axes should be more human readable than the column name"
    return "Success"


def test_2_6(answer):
    assert answer is not None, 'You should assign a value of "A", "B", "C", or "D" to the answer2_6 object.'
    answer = answer.upper()
    assert sha1(str(answer + "X").encode('utf8')).hexdigest(
    ) == 'fe09563e3a1b9f78674fe92fcb5b526a1b9353d8', "Your answer is incorrect. You should indicate the index corresponding to the wrongly labled sample"
    return "Success"
