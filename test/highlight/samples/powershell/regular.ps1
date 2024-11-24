using namespace System.Collections.Generic
# parenthesized_expression
(((((((((((((1)))))))))))))



# argument_list
[math]::Pow(2, 3)


# function_statement
# function_parameter_declaration
function test
{
	# param_block
	param([string]$parameter)
}

function simple($testValue)
{
	Write-Host $testValue
}


# foreach_statement
foreach ($item in $collection)
# statement_block
{
	# for_statement
	for ($i = 0; $i -lt $array.Count; $i++)
	# statement_block
	{
		# while_statement
		while ($false)
		# statement_block
		{
			# do_statement
			do
			# statement_block
			{
				do
				# statement_block
				{
					# if_statement
					if (1)
					{
    
					}
					# elseif_clause
					elseif (2)
					{
    
					}
				} while ($false)
			} until ($false) 
		}
	}
}



# script_block_expression
& { $null = (2 + 2) / 2 }
{ { { { { { { { { { { { { $null = (2 + 2) / 2 } } } } } } } } } } } } }


# switch_condition
switch ($x)
# switch_body
{
	1 {  }
	Default {}
}

# class_statement
class ClassName
{
	[int] $value
	# class_method_definition ()
	# class_method_definition []
	ClassName([int]$val) 
	{
		$this.value = $val

	}
	static [void] MethodName([string]$OptionalParameters)
	{

	}
	Dummy()
	{
		$this.value++
	}

	[int] $PropertyName
	hidden [string] $PropertyName

}

# enum_statement
enum EnumName
{
	ValueString = 0
	Value2String = 1
}

# attribute []
# attribute ()
function Get-Stuff
{
	[CmdletBinding(DefaultParameterSetName = 'stuff', PositionalBinding = $false)]
	[Alias('stuff')]
	[OutputType([String])]
	Param (
		[Parameter(Mandatory, ValueFromPipeline, ParameterSetName = 'stuff')]
		[ValidateNotNullOrEmpty()]
		[ValidateCount(0, 5)]
		[ValidateSet('sun', 'moon', 'earth')]
		[Alias('p1')]
		[string[]]
		$Param1,
        
		[Parameter(ParameterSetName = 'stuff')]
		[AllowNull()]
		[ValidateScript({ $true })]
		[ValidateRange(0, 5)]
		[int]
		$Param2
	)
}

# element_access
$array[0][0][0]
$array[0, 0, 0]

# type_literal
[string]::new()

# type_spec array_type_name
[byte[]]::new(1kb)


# type_spec generic_type_name
$dict = [Dictionary[string, int]]::new()
$listDict = [List[Dictionary[string, int]]]::new()
$hashListDict = [HashSet[List[Dictionary[string, [List[int]]]]]]::new()

[System.Collections.Generic.List[int]]$list = @( 1, 2, 3, 4, 5 )

$result = [System.Linq.Enumerable]::Select[int, float](
	$list,
	[Func[int, float]]{
		param($item)
		[math]::Pow($item, 3)
	}
)
$result
