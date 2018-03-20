function TestingData(input_neurons,hidden_neurons,output_neurons)
    %This function is used to create a matrix containing features to be tested 
    %on the trained network
    %In this function the data are appended to an array one after the
    %other according to the classes. Thus this function results in a matrix
    %of size 10000 X 784 which is saved as test_data.mat file 
    display('Test data processing started')
    load('full_trained_weights.mat');
    load('mnist_all.mat');
    testing_data = zeros(10000,784);
    testing_output = zeros(10000,1);
    k = 1;
    for i = 1:980
        testing_example = test0(i,:);
        testing_data(k,:) = testing_example;
        testing_output(k,1) = 0;
        k = k + 1;
    end
    for i = 1:1135
        testing_example = test1(i,:);
        testing_data(k,:) = testing_example;
        testing_output(k,1) = 1;
        k = k + 1;
    end
    for i = 1:1032
        testing_example = test2(i,:);
        testing_data(k,:) = testing_example;
        testing_output(k,1) = 2;
        k = k + 1;
    end
    for i = 1:1010
        testing_example = test3(i,:);
        testing_data(k,:) = testing_example;
        testing_output(k,1) = 3;
        k = k + 1;
    end
    for i = 1:982
        testing_example = test4(i,:);
        testing_data(k,:) = testing_example;
        testing_output(k,1) = 4;
        k = k + 1;
    end
    for i = 1:892
        testing_example = test5(i,:);
        testing_data(k,:) = testing_example;
        testing_output(k,1) = 5;
        k = k + 1;
    end
    for i = 1:958
        testing_example = test6(i,:);
        testing_data(k,:) = testing_example;
        testing_output(k,1) = 6;
        k = k + 1;
    end
    for i = 1:1028
        testing_example = test7(i,:);
        testing_data(k,:) = testing_example;
        testing_output(k,1) = 7;
        k = k + 1;
    end
    for i = 1:974
        testing_example = test8(i,:);
        testing_data(k,:) = testing_example;
        testing_output(k,1) = 8;
        k = k + 1;
    end
    for i = 1:1009
        testing_example = test9(i,:);
        testing_data(k,:) = testing_example;
        testing_output(k,1) = 9;
        k = k + 1;
    end
    save('test_data','testing_data','testing_output');
    display('Test data processing ended');
end