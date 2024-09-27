INSERT INTO SFB_ATTRIBUTES (ATTR_NAME, ATTR_RETURN_VALUE, ATTR_TYPE, ATTR_HELP_TEXT, ATTR_REMARK) VALUES
('String', '"type": "string"', 'type', 'Text Input Field', 'String data type: Used to store sequences of characters, such as text. Strings are typically enclosed in quotes and can include letters, numbers, and various symbols. Useful for representing names, addresses, and any other textual data in the system.');

INSERT INTO SFB_ATTRIBUTES (ATTR_NAME, ATTR_RETURN_VALUE, ATTR_TYPE, ATTR_HELP_TEXT, ATTR_REMARK) VALUES
('Integer', '"type": "integer"', 'type', 'Number Input Field', 'Integer data type: Used to store whole numbers without fractional components. Integers are suitable for counts, indexes, and other mathematical calculations that require non-decimal values. They are fundamental in loops, array indexing, and performing arithmetic operations within the system.');

INSERT INTO SFB_ATTRIBUTES (ATTR_NAME, ATTR_RETURN_VALUE, ATTR_TYPE, ATTR_HELP_TEXT, ATTR_REMARK) VALUES
('Number (float)', '"type": "number"', 'type', 'Properties:Align (APEX)','Number data type (Floating-point): Used to store numbers with decimal points. Floating-point numbers are essential for representing fractions, percentages, and other values that require more precision than integers can provide. Ideal for calculations in science, engineering, and financial applications that involve decimal and exponential values.');

INSERT INTO SFB_ATTRIBUTES (ATTR_NAME, ATTR_RETURN_VALUE, ATTR_TYPE, ATTR_HELP_TEXT, ATTR_REMARK) VALUES
('Boolean', '"type": "boolean"', 'type', 'Properties: Switch(APEX)' ,'Boolean data type: Used to store values that represent truth states, typically either ''true'' or ''false''. Booleans are fundamental in conditional logic, enabling decision-making processes in programming such as controlling flow with if-else statements and managing loops. Essential for representing binary states like on/off, yes/no, or active/inactive in applications.');

INSERT INTO SFB_ATTRIBUTES (ATTR_NAME, ATTR_RETURN_VALUE, ATTR_TYPE, ATTR_HELP_TEXT, ATTR_REMARK) VALUES
('Null', 'number', 'type', 'NULL','Null data type: Represents the absence of a value or a ''nothing'' state. Null is used to denote that a variable has not been initialized or an object reference points to no actual object. It is essential for handling cases where a value is missing or unavailable, and helps in preventing data type errors and managing optional or missing data effectively.');

INSERT INTO SFB_ATTRIBUTES (ATTR_NAME, ATTR_RETURN_VALUE, ATTR_TYPE, ATTR_HELP_TEXT) VALUES
('Only Date', '"type": "string", "format": "date"', 'format','Date Item');

INSERT INTO SFB_ATTRIBUTES (ATTR_NAME, ATTR_RETURN_VALUE, ATTR_TYPE, ATTR_HELP_TEXT) VALUES
('Only Time', '"type": "string", "format": "time"', 'format','Date Item');

INSERT INTO SFB_ATTRIBUTES (ATTR_NAME, ATTR_RETURN_VALUE, ATTR_TYPE, ATTR_HELP_TEXT) VALUES
('Date with Time', '"type": "string", "format": "date-time"', 'format','Date Item');

INSERT INTO SFB_ATTRIBUTES (ATTR_NAME, ATTR_RETURN_VALUE, ATTR_TYPE, ATTR_HELP_TEXT) VALUES
('E-Mail Address', '"type": "string", "format": "email"', 'format','E-Mail Input Field');

INSERT INTO SFB_ATTRIBUTES (ATTR_NAME, ATTR_RETURN_VALUE, ATTR_TYPE, ATTR_HELP_TEXT) VALUES
('URL-Link', '"type": "string", "format": "url"', 'format','Properties: Url(JSON)');

INSERT INTO SFB_ATTRIBUTES (ATTR_NAME, ATTR_RETURN_VALUE, ATTR_TYPE, ATTR_HELP_TEXT) VALUES
('Array', '"type": "array"','type','Combo-Box Item');