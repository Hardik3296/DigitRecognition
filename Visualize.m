function Visualize()
    load('train_data.mat');
    for i=54190:54200
        digit = reshape(training_data(i,:),28,28);
        disp(training_output(i,1));
        digit = digit';
        %imshow(digit);
        pause(2);
    end
end