# language: en
Feature: zz

	Scenario Outline: zz
		Given I have to do a BDD test
		When I'm using a "free value"
		And a value from the dataset <value1>
		Then I try to use a datatable
			| indice | tendency |
			| Dow Jones | -0.37% |
			| Nasdaq | -0.52% |
			| Nikkei | -0.26% |
		And I try to use a docstring
			"""
			this is supposed to be a docstring
			"""
		And I try to inject some comments
			#this is supposed to be a comment
		But nothing else to add

		@ds1
		Examples:
		| value1 |
		| "v1" |