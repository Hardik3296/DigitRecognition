function DataPreprocessing(input_neurons,hidden_neurons,output_neurons)
    %{
        This function is used to create training data for the network. This 
        function creates the training example matrix of size  54200 X 784
        and corresponding training variables of size 54200 X 1. Finally
        both the matrices re stored in train_data.at file.
    %}
    fprintf('Pre processing started\n');
    load('mnist_all.mat');
    no_of_examples = 54200;
    training_data = zeros(no_of_examples,784);
    training_output = zeros(no_of_examples,1);
    data_set = 0;
    example_number=[1 1 1 1 1 1 1 1 1 1];
    for i = 1 : no_of_examples
        if data_set == 0
            train_example = train0(example_number(1,1),:);
            training_data(i,:) = train_example;
            example_number(1:1) = example_number(1,1)+1;
            training_output(i,1) = 0;
        end
        if data_set == 1
            train_example = train1(example_number(1,2),:);
            training_data(i,:) = train_example;
            example_number(1:2) = example_number(1,2)+1;
            training_output(i,1) = 1;
        end
        if data_set == 2
            train_example=train2(example_number(1,3),:);
            training_data(i,:) = train_example;
            example_number(1:3)=example_number(1,3)+1;
            training_output(i,1)=2;
        end
        if data_set == 3
            train_example=train3(example_number(1,4),:);
            training_data(i,:) = train_example;
            example_number(1:4)=example_number(1,4)+1;
            training_output(i,1)=3;
        end
        if data_set == 4
            train_example=train4(example_number(1,5),:);
            training_data(i,:) = train_example;
            example_number(1:5)=example_number(1,5)+1;
            training_output(i,1)=4;
        end
        if data_set == 5
            train_example=train5(example_number(1,6),:);
            training_data(i,:) = train_example;
            example_number(1:6)=example_number(1,6)+1;
            training_output(i,1)=5;
        end
        if data_set == 6
            train_example=train6(example_number(1,7),:);
            training_data(i,:) = train_example;
            example_number(1:7)=example_number(1,7)+1;
            training_output(i,1)=6;
        end
        if data_set == 7
            train_example=train7(example_number(1,8),:);
            training_data(i,:) = train_example;
            example_number(1:8)=example_number(1,8)+1;
            training_output(i,1)=7;
        end
        if data_set == 8
            train_example=train8(example_number(1,9),:);
            training_data(i,:) = train_example;
            example_number(1:9)=example_number(1,9)+1;
            training_output(i,1)=8;
        end
        if data_set == 9
            train_example=train9(example_number(1,10),:);
            training_data(i,:) = train_example;
            example_number(1:10)=example_number(1,10)+1;
            training_output(i,1)=9;
        end
        data_set = rem((data_set + 1),10);
    end
    save('train_data.mat','training_data','training_output');
    display('Pre processing ended');
end