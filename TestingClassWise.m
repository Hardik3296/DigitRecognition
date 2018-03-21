function TestingClassWise(hid_inp_weights,out_hid_weights,input_neurons,hidden_neurons,output_neurons)
    load('mnist_all.mat');
    %Testing for class 0
    count = 0;
    no_of_examples=size(test0,1);
    for j = 1:no_of_examples
        [final_hidden,final_output] = FeedForward(test0(j,:),hid_inp_weights,out_hid_weights);
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
        if pos == 0
            count = count + 1;
        end
    end
    fprintf('accuracy for class 0 is %d\n',(count/no_of_examples));
    %Testing for class 1
    count = 0;
    no_of_examples=size(test1,1);
    for j = 1:no_of_examples
        [final_hidden,final_output] = FeedForward(test1(j,:),hid_inp_weights,out_hid_weights);
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
        if pos == 1
            count = count + 1;
        end
    end
    fprintf('accuracy for class 1 is %d\n',(count/no_of_examples));
    %Testing for class 2
    count = 0;
    no_of_examples=size(test2,1);
    for j = 1:no_of_examples
        [final_hidden,final_output] = FeedForward(test2(j,:),hid_inp_weights,out_hid_weights);
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
        if pos == 2
            count = count + 1;
        end
    end
    fprintf('accuracy for class 2 is %d\n',(count/no_of_examples));
    %Testing for class 3
    count = 0;
    no_of_examples=size(test3,1);
    for j = 1:no_of_examples
        [final_hidden,final_output] = FeedForward(test3(j,:),hid_inp_weights,out_hid_weights);
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
        if pos == 3
            count = count + 1;
        end
    end
    fprintf('accuracy for class 3 is %d\n',(count/no_of_examples));
    %Testing for class 4
    count = 0;
    no_of_examples=size(test4,1);
    for j = 1:no_of_examples
        [final_hidden,final_output] = FeedForward(test4(j,:),hid_inp_weights,out_hid_weights);
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
        if pos == 4
            count = count + 1;
        end
    end
    fprintf('accuracy for class 4 is %d\n',(count/no_of_examples));
    %Testing for class 5
    count = 0;
    no_of_examples=size(test5,1);
    for j = 1:no_of_examples
        [final_hidden,final_output] = FeedForward(test5(j,:),hid_inp_weights,out_hid_weights);
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
        if pos == 5
            count = count + 1;
        end
    end
    fprintf('accuracy for class 5 is %d\n',(count/no_of_examples));
    %Testing for class 6
    count = 0;
    no_of_examples=size(test6,1);
    for j = 1:no_of_examples
        [final_hidden,final_output] = FeedForward(test6(j,:),hid_inp_weights,out_hid_weights);
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
        if pos == 6
            count = count + 1;
        end
    end
    fprintf('accuracy for class 6 is %d\n',(count/no_of_examples));
    %Testing for class 7
    count = 0;
    no_of_examples=size(test7,1);
    for j = 1:no_of_examples
        [final_hidden,final_output] = FeedForward(test7(j,:),hid_inp_weights,out_hid_weights);
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
        if pos == 7
            count = count + 1;
        end
    end
    fprintf('accuracy for class 7 is %d\n',(count/no_of_examples));
    %Testing for class 8
    count = 0;
    no_of_examples=size(test8,1);
    for j = 1:no_of_examples
        [final_hidden,final_output] = FeedForward(test8(j,:),hid_inp_weights,out_hid_weights);
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
        if pos == 8
            count = count + 1;
        end
    end
    fprintf('accuracy for class 8 is %d\n',(count/no_of_examples));
    %Testing for class 9
    count = 0;
    no_of_examples=size(test9,1);
    for j = 1:no_of_examples
        [final_hidden,final_output] = FeedForward(test9(j,:),hid_inp_weights,out_hid_weights);
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
        if pos == 9
            count = count + 1;
        end
    end
    fprintf('accuracy for class 9 is %d\n',(count/no_of_examples));
end