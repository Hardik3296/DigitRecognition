function [final_hidden,final_output] = FeedForward(training_example,hid_inp_weights,out_hid_weights)
    %{
    This fuunction is used to feed forwrd the examples on the neural
    network to obtain the final answer. This function returns two vectors
    final_hidden and final_output of size 
    %}
    training_example = double(training_example);
    %Size of temp_hidden is 100 X 1.
    temp_hidden = double(hid_inp_weights * training_example');
    %Size of final_hidden is 100 X 1
    final_hidden = double(sigm(temp_hidden));
    %Size of temp_output is 10 X 1
    temp_output = double(out_hid_weights * final_hidden);
    %Size of final_output is 10 X 1
    final_output = double(sigm(temp_output));
end