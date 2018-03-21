function [hid_inp_weights,out_hid_weights] =  BackPropogation(input_neurons,hidden_neurons,output_neurons)
    %{
        This function is used to implement Backpropogation on the neural
        network to adjust the weights of the two matrices. This function first
        feedforwards the example on the neural network using the feedForwrd()
        function, then it backpropagates the error using the backpropagation
        error algorithm and adjust the different weights accordingly.
    %}
    display('Backpropogation started');
    load('train_data.mat');
    no_of_examples = size(training_data,1);
    %Size of hid_inp_weights is 100 X 784
    hid_inp_weights = double(rand(hidden_neurons,input_neurons))/10;
    %Size of out_hid_weights is 10 X 100
    out_hid_weights = double(rand(output_neurons,hidden_neurons))/10;
    no_of_iterations = 7;
    lr = 0;
    %{
    One complete involves implementing the backpropagation algorithm for
    all the different training examples. The number of iterations can be
    varied accordingly. But rememeber to chhose number of iterations
    carefully so as to avoid overfitting.
    %}
    for j = 1:no_of_iterations
        fprintf('iteration number  %d\n',j);
        lr = lr + 1;
        for i = 1:no_of_examples
            alpha = 1 / sqrt(lr);
            [final_hidden,final_output] = FeedForward(training_data(i,:),hid_inp_weights,out_hid_weights);
            %Size of target is 10 X 1
            target = [0;0;0;0;0;0;0;0;0;0];
            target(training_output(i,:)+1,1) = 1;
            %Size of error_pres is 10 X 1
            error_pres = target - final_output;
            errorR = size(error_pres,1);
            error = zeros(10,1);
            for i=1:errorR
                error(i,1) = error_pres(i,1) * error_pres(i,1);
                error(i,1) = (1/2) * error(i,1);
            end
            error_req = -1 .* error_pres;
            error_output = error_req .* (final_output .* (1-final_output));
            %Size of del_output is 10 X 100
            del_output = error_output * final_hidden';
            error_hidden = (error_output' * out_hid_weights)' .* (final_hidden .* (1-final_hidden));
            %Size of del_hidden is 100 X 784 
            del_hidden = error_hidden * training_data(i,:) ;
            hid_inp_weights = hid_inp_weights - alpha .* del_hidden;
            out_hid_weights = out_hid_weights - alpha .* del_output;
        end
    end
    display('Backpropogation ended');
    save('full_trained_weights.mat','hid_inp_weights','out_hid_weights');
end