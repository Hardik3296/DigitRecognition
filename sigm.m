function final_input = sigm(input)
    %{
        This function is used to apply sigmoid function on each individual 
        element of the input vector. This function brings the value of the
        elements between 0 and 1.
    %}
    input =double(input);
    [row,column]=size(input);
    for i = 1:row
        final_input(i,1) = double(1/(1+exp(-1*input(i,1))));
    end
end