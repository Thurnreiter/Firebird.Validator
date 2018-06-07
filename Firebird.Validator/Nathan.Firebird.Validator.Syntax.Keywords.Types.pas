unit Nathan.Firebird.Validator.Syntax.Keywords.Types;

interface

{$M+}

type
  //  TDetail = record
  //    Kind: Integer;
  //    Value: string;
  //  end;

  TFb25TokenKind = (
    fb25None,
    fb25Whitespaces,
    fb25Starter,
    fb25Operator,
    fb25Variable,
    fb25TerminatorCharacter,

    fb25BracketOpen,
    fb25BracketClose,
    fb25SquareOpen,
    fb25SquareClose,
    fb25RoundBracketOpen,
    fb25RoundBracketClose,

    fb25ApostropheOpen,
    fb25ApostropheClose,

    fb25Arguments,

    fb25LineBreak);

{$M-}

const
  /// <summary>
  ///   Open and close brackets.
  /// </summary>
  Firebird25Brackets: TArray<String> = ['(', ')', '[', ']'];

  /// <summary>
  ///  Keywords at the beginning of the DDL (Data Definition Statements) statement.
  ///  https://firebirdsql.org/file/documentation/reference_manuals/fblangref25-en/html/fblangref25-ddl.html
  /// </summary>
  Firebird25DDLBeginning: TArray<String> = ['ALTER', 'COMMENT', 'CREATE', 'DECLARE', 'DROP', 'RECREATE', 'SET'];

  /// <summary>
  ///   Other (remaining) reserved keywords.
  /// </summary>
  {$REGION 'Firebird 2.5 Keywords'}
  Firebird25Keywords: TArray<String> = [
    '!<',
    '^<',
    '^=',
    '^>',
    ',',
    ':=',
    '!=',
    '!>',
    '(',
    ')',
    '<',
    '<=',
    '<>',
    '=',
    '>',
    '>=',
    '||',
    '~<',
    '~=',
    '~>',
    'ABS',
    'ACCENT',
    'ACOS',
    'ACTION',
    'ACTIVE',
    'ADD',
    'ADMIN',
    'AFTER',
    'ALL',
    'ALTER',
    'ALWAYS',
    'AND',
    'ANY',
    'AS',
    'ASC',
    'ASCENDING',
    'ASCII_CHAR',
    'ASCII_VAL',
    'ASIN',
    'AT',
    'ATAN',
    'ATAN2',
    'AUTO',
    'AUTONOMOUS',
    'AVG',
    'BACKUP',
    'BEFORE',
    'BEGIN',
    'BETWEEN',
    'BIGINT',
    'BIN_AND',
    'BIN_NOT',
    'BIN_OR',
    'BIN_SHL',
    'BIN_SHR',
    'BIN_XOR',
    'BIT_LENGTH',
    'BLOB',
    'BLOCK',
    'BOTH',
    'BREAK',
    'BY',
    'CALLER',
    'CASCADE',
    'CASE',
    'CAST',
    'CEIL',
    'CEILING',
    'CHAR',
    'CHAR_LENGTH',
    'CHAR_TO_UUID',
    'CHARACTER',
    'CHARACTER_LENGTH',
    'CHECK',
    'CLOSE',
    'COALESCE',
    'COLLATE',
    'COLLATION',
    'COLUMN',
    'COMMENT',
    'COMMIT',
    'COMMITTED',
    'COMMON',
    'COMPUTED',
    'CONDITIONAL',
    'CONNECT',
    'CONSTRAINT',
    'CONTAINING',
    'COS',
    'COSH',
    'COT',
    'COUNT',
    'CREATE',
    'CROSS',
    'CSTRING',
    'CURRENT',
    'CURRENT_CONNECTION',
    'CURRENT_DATE',
    'CURRENT_ROLE',
    'CURRENT_TIME',
    'CURRENT_TIMESTAMP',
    'CURRENT_TRANSACTION',
    'CURRENT_USER',
    'CURSOR',
    'DATA',
    'DATABASE',
    'DATE',
    'DATEADD',
    'DATEDIFF',
    'DAY',
    'DEC',
    'DECIMAL',
    'DECLARE',
    'DECODE',
    'DEFAULT',
    'DELETE',
    'DELETING',
    'DESC',
    'DESCENDING',
    'DESCRIPTOR',
    'DIFFERENCE',
    'DISCONNECT',
    'DISTINCT',
    'DO',
    'DOMAIN',
    'DOUBLE',
    'DROP',
    'ELSE',
    'END',
    'ENTRY_POINT',
    'ESCAPE',
    'EXCEPTION',
    'EXECUTE',
    'EXISTS',
    'EXIT',
    'EXP',
    'EXTERNAL',
    'EXTRACT',
    'FETCH',
    'FILE',
    'FILTER',
    'FIRST',
    'FIRSTNAME',
    'FLOAT',
    'FLOOR',
    'FOR',
    'FOREIGN',
    'FREE_IT',
    'FROM',
    'FULL',
    'FUNCTION',
    'GDSCODE',
    'GEN_ID',
    'GEN_UUID',
    'GENERATED',
    'GENERATOR',
    'GLOBAL',
    'GRANT',
    'GRANTED',
    'GROUP',
    'HASH',
    'HAVING',
    'HOUR',
    'IF',
    'IGNORE',
    'IIF',
    'IN',
    'INACTIVE',
    'INDEX',
    'INNER',
    'INPUT_TYPE',
    'INSENSITIVE',
    'INSERT',
    'INSERTING',
    'INT',
    'INTEGER',
    'INTO',
    'IS',
    'ISOLATION',
    'JOIN',
    'KEY',
    'LAST',
    'LASTNAME',
    'LEADING',
    'LEAVE',
    'LEFT',
    'LENGTH',
    'LEVEL',
    'LIKE',
    'LIMBO',
    'LIST',
    'LN',
    'LOCK',
    'LOG',
    'LOG10',
    'LONG',
    'LOWER',
    'LPAD',
    'MANUAL',
    'MAPPING',
    'MATCHED',
    'MATCHING',
    'MAX',
    'MAXIMUM_SEGMENT',
    'MAXVALUE',
    'MERGE',
    'MIDDLENAME',
    'MILLISECOND',
    'MIN',
    'MINUTE',
    'MINVALUE',
    'MOD',
    'MODULE_NAME',
    'MONTH',
    'NAMES',
    'NATIONAL',
    'NATURAL',
    'NCHAR',
    'NEXT',
    'NO',
    'NOT',
    'NULL',
    'NULLIF',
    'NULLS',
    'NUMERIC',
    'OCTET_LENGTH',
    'OF',
    'ON',
    'ONLY',
    'OPEN',
    'OPTION',
    'OR',
    'ORDER',
    'OS_NAME',
    'OUTER',
    'OUTPUT_TYPE',
    'OVERFLOW',
    'OVERLAY',
    'PAD',
    'PAGE',
    'PAGE_SIZE',
    'PAGES',
    'PARAMETER',
    'PASSWORD',
    'PI',
    'PLACING',
    'PLAN',
    'POSITION',
    'POST_EVENT',
    'POWER',
    'PRECISION',
    'PRESERVE',
    'PRIMARY',
    'PRIVILEGES',
    'PROCEDURE',
    'PROTECTED',
    'RAND',
    'RDB$DB_KEY',
    'READ',
    'REAL',
    'RECORD_VERSION',
    'RECREATE',
    'RECURSIVE',
    'REFERENCES',
    'RELEASE',
    'REPLACE',
    'REQUESTS',
    'RESERV',
    'RESERVING',
    'RESTART',
    'RESTRICT',
    'RETAIN',
    'RETURNING',
    'RETURNING_VALUES',
    'RETURNS',
    'REVERSE',
    'REVOKE',
    'RIGHT',
    'ROLE',
    'ROLLBACK',
    'ROUND',
    'ROW_COUNT',
    'ROWS',
    'RPAD',
    'SAVEPOINT',
    'SCALAR_ARRAY',
    'SCHEMA',
    'SECOND',
    'SEGMENT',
    'SELECT',
    'SENSITIVE',
    'SEQUENCE',
    'SET',
    'SHADOW',
    'SHARED',
    'SIGN',
    'SIMILAR',
    'SIN',
    'SINGULAR',
    'SINH',
    'SIZE',
    'SKIP',
    'SMALLINT',
    'SNAPSHOT',
    'SOME',
    'SORT',
    'SOURCE',
    'SPACE',
    'SQLCODE',
    'SQLSTATE (2.5.1)',
    'SQRT',
    'STABILITY',
    'START',
    'STARTING',
    'STARTS',
    'STATEMENT',
    'STATISTICS',
    'SUB_TYPE',
    'SUBSTRING',
    'SUM',
    'SUSPEND',
    'TABLE',
    'TAN',
    'TANH',
    'TEMPORARY',
    'THEN',
    'TIME',
    'TIMEOUT',
    'TIMESTAMP',
    'TO',
    'TRAILING',
    'TRANSACTION',
    'TRIGGER',
    'TRIM',
    'TRUNC',
    'TWO_PHASE',
    'TYPE',
    'UNCOMMITTED',
    'UNDO',
    'UNION',
    'UNIQUE',
    'UPDATE',
    'UPDATING',
    'UPPER',
    'USER',
    'USING',
    'UUID_TO_CHAR',
    'VALUE',
    'VALUES',
    'VARCHAR',
    'VARIABLE',
    'VARYING',
    'VIEW',
    'WAIT',
    'WEEK',
    'WEEKDAY',
    'WHEN',
    'WHERE',
    'WHILE',
    'WITH',
    'WORK',
    'WRITE',
    'YEAR',
    'YEARDAY'];
  {$ENDREGION}

  {$REGION 'Firebird 2.5 Reserved Words'}
  Firebird25ReservedWords: TArray<String> = [
    'ADD',
    'ADMIN',
    'ALL',
    'ALTER',
    'AND',
    'ANY',
    'AS',
    'AT',
    'AVG',
    'BEGIN',
    'BETWEEN',
    'BIGINT',
    'BIT_LENGTH',
    'BLOB',
    'BOTH',
    'BY',
    'CASE',
    'CAST',
    'CHAR',
    'CHAR_LENGTH',
    'CHARACTER',
    'CHARACTER_LENGTH',
    'CHECK',
    'CLOSE',
    'COLLATE',
    'COLUMN',
    'COMMIT',
    'CONNECT',
    'CONSTRAINT',
    'COUNT',
    'CREATE',
    'CROSS',
    'CURRENT',
    'CURRENT_CONNECTION',
    'CURRENT_DATE',
    'CURRENT_ROLE',
    'CURRENT_TIME',
    'CURRENT_TIMESTAMP',
    'CURRENT_TRANSACTION',
    'CURRENT_USER',
    'CURSOR',
    'DATE',
    'DAY',
    'DEC',
    'DECIMAL',
    'DECLARE',
    'DEFAULT',
    'DELETE',
    'DISCONNECT',
    'DISTINCT',
    'DOUBLE',
    'DROP',
    'ELSE',
    'END',
    'ESCAPE',
    'EXECUTE',
    'EXISTS',
    'EXTERNAL',
    'EXTRACT',
    'FETCH',
    'FILTER',
    'FLOAT',
    'FOR',
    'FOREIGN',
    'FROM',
    'FULL',
    'FUNCTION',
    'GDSCODE',
    'GLOBAL',
    'GRANT',
    'GROUP',
    'HAVING',
    'HOUR',
    'IN',
    'INDEX',
    'INNER',
    'INSENSITIVE',
    'INSERT',
    'INT',
    'INTEGER',
    'INTO',
    'IS',
    'JOIN',
    'LEADING',
    'LEFT',
    'LIKE',
    'LONG',
    'LOWER',
    'MAX',
    'MAXIMUM_SEGMENT',
    'MERGE',
    'MIN',
    'MINUTE',
    'MONTH',
    'NATIONAL',
    'NATURAL',
    'NCHAR',
    'NO',
    'NOT',
    'NULL',
    'NUMERIC',
    'OCTET_LENGTH',
    'OF',
    'ON',
    'ONLY',
    'OPEN',
    'OR',
    'ORDER',
    'OUTER',
    'PARAMETER',
    'PLAN',
    'POSITION',
    'POST_EVENT',
    'PRECISION',
    'PRIMARY',
    'PROCEDURE',
    'RDB$DB_KEY',
    'REAL',
    'RECORD_VERSION',
    'RECREATE',
    'RECURSIVE',
    'REFERENCES',
    'RELEASE',
    'RETURNING_VALUES',
    'RETURNS',
    'REVOKE',
    'RIGHT',
    'ROLLBACK',
    'ROW_COUNT',
    'ROWS',
    'SAVEPOINT',
    'SECOND',
    'SELECT',
    'SENSITIVE',
    'SET',
    'SIMILAR',
    'SMALLINT',
    'SOME',
    'SQLCODE',
    'SQLSTATE (2.5.1)',
    'START',
    'SUM',
    'TABLE',
    'THEN',
    'TIME',
    'TIMESTAMP',
    'TO',
    'TRAILING',
    'TRIGGER',
    'TRIM',
    'UNION',
    'UNIQUE',
    'UPDATE',
    'UPPER',
    'USER',
    'USING',
    'VALUE',
    'VALUES',
    'VARCHAR',
    'VARIABLE',
    'VARYING',
    'VIEW',
    'WHEN',
    'WHERE',
    'WHILE',
    'WITH',
    'YEAR'];
  {$ENDREGION}

  /// <summary>
  ///  Terminator Character
  ///  The default terminator symbol for the Firebird database is the semicolon (;).
  ///  Statements will only be executed if they end with a semicolon.
  ///  However, you may use isql to change the symbol to any printable character,
  ///  or characters, from the first 127 characters of the ASCII subset,
  ///  by using the SET TERM command.
  ///    Semicolon = ;
  ///    Tile = ~
  ///    Roof = ^
  /// </summary>
  Firebird25DDLTerminatorCharacter: TArray<String> = [';', '~', '^'];

  //  Details: array[0..1] of TDetail = ((Kind: 0; Value: 'alter'), (Kind: 0; Value: 'create'));

implementation

end.