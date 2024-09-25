INSERT INTO SFB_ATTRIBUTES (ATTR_NAME, ATTR_RETURN_VALUE, ATTR_TYPE, ATTR_REMARK) VALUES
('String', '"type": "string"', 'type', 'String data type: Used to store sequences of characters, such as text. Strings are typically enclosed in quotes and can include letters, numbers, and various symbols. Useful for representing names, addresses, and any other textual data in the system.');

INSERT INTO SFB_ATTRIBUTES (ATTR_NAME, ATTR_RETURN_VALUE, ATTR_TYPE, ATTR_REMARK) VALUES
('Integer', '"type": "integer"', 'type', 'Integer data type: Used to store whole numbers without fractional components. Integers are suitable for counts, indexes, and other mathematical calculations that require non-decimal values. They are fundamental in loops, array indexing, and performing arithmetic operations within the system.');

INSERT INTO SFB_ATTRIBUTES (ATTR_NAME, ATTR_RETURN_VALUE, ATTR_TYPE, ATTR_REMARK) VALUES
('Number (float)', '"type": "number"', 'type', 'Number data type (Floating-point): Used to store numbers with decimal points. Floating-point numbers are essential for representing fractions, percentages, and other values that require more precision than integers can provide. Ideal for calculations in science, engineering, and financial applications that involve decimal and exponential values.');

INSERT INTO SFB_ATTRIBUTES (ATTR_NAME, ATTR_RETURN_VALUE, ATTR_TYPE, ATTR_REMARK) VALUES
('Boolean', '"type": "boolean"', 'type', 'Boolean data type: Used to store values that represent truth states, typically either ''true'' or ''false''. Booleans are fundamental in conditional logic, enabling decision-making processes in programming such as controlling flow with if-else statements and managing loops. Essential for representing binary states like on/off, yes/no, or active/inactive in applications.');

INSERT INTO SFB_ATTRIBUTES (ATTR_NAME, ATTR_RETURN_VALUE, ATTR_TYPE, ATTR_REMARK) VALUES
('Null', 'number', 'type', 'Null data type: Represents the absence of a value or a ''nothing'' state. Null is used to denote that a variable has not been initialized or an object reference points to no actual object. It is essential for handling cases where a value is missing or unavailable, and helps in preventing data type errors and managing optional or missing data effectively.');

INSERT INTO SFB_ATTRIBUTES (ATTR_NAME, ATTR_RETURN_VALUE, ATTR_TYPE) VALUES
('Only Date	', '"type": "string", "format": "date"', 'format');

INSERT INTO SFB_ATTRIBUTES (ATTR_NAME, ATTR_RETURN_VALUE, ATTR_TYPE) VALUES
('Only Time', '"type": "string", "format": "time"', 'format');

INSERT INTO SFB_ATTRIBUTES (ATTR_NAME, ATTR_RETURN_VALUE, ATTR_TYPE) VALUES
('Date with Time', '"type": "string", "format": "date-time"', 'format');

INSERT INTO SFB_ATTRIBUTES (ATTR_NAME, ATTR_RETURN_VALUE, ATTR_TYPE) VALUES
('E-Mail Address', '"type": "string", "format": "email"', 'format');

INSERT INTO SFB_ATTRIBUTES (ATTR_NAME, ATTR_RETURN_VALUE, ATTR_TYPE) VALUES
('URL-Link', '"type": "string", "format": "url"', 'format');

INSERT INTO SFB_ATTRIBUTES (ATTR_NAME, ATTR_RETURN_VALUE, ATTR_TYPE) VALUES
('Array', '"type": "array"', 'type');
