
*** Variables ***


*** Keywords ***

I have to do a BDD test
    Log    zzzz
I'm using a "${something}"
    Log    zzzz ${something}
a value from the dataset "${injected_dataset}"
    Log    zzzz ${injected_dataset}
I try to use a datatable "${injected_datatable}"
    Log    zzzz ${injected_datatable}
I try to use a docstring "${injected_docstring}"
    Log    zzzz ${injected_docstring}
I try to inject some comments
    Log    zzzz
nothing else to add
    Log    zzzz
    Skip
Break this
    Fail    bye

