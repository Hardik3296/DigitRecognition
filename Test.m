function Test(hid_inp_weights,out_hid_weights,input_neurons,hidden_neurons,output_neurons)
    load('test_data.mat');
    display('Testing started');
    TestingClassWise(hid_inp_weights,out_hid_weights,input_neurons,hidden_neurons,output_neurons);
    no_of_examples = size(testing_data,1);
    count = 0;
    for j = 1:no_of_examples
        [final_hidden,final_output] = FeedForward(testing_data(j,:),hid_inp_weights,out_hid_weights);
        [row,column] = size(final_output);
        max = double(final_output(1,1));
        pos=1;
        for i = 1:row
            if final_output(i,1) > max
                max = double(final_output(i,1));
                pos = i;
            end
        end
        pos = pos - 1;
        if pos == testing_output(j,1)
            count = count + 1;
        end
    end
    accuracy = double(double(count/no_of_examples));
    fprintf('overall accuracy is %f\n',accuracy);