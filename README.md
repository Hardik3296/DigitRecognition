# DigitRecognition
This project involves creating our own Artificial Neural Network and training the network to recognize all the digits from 0-9. For this project I have used Backpropagation algorithm to train the neural netwok.
## Dataset 
The dataset used for this project is the [MNIST](http://yann.lecun.com/exdb/mnist/) which contains around 60000 images for training the neural network and 10000 images for testing it.
## Description of the dataset
The datset consisits of images of size 28 X 28 stored as a single vector of 1 X 784. There are around 60000 such vectors that constitue the dataset for training the network. Similarly the testing dataset also consists of 10000 28 X 28 images represented as vectors of size 1 X 784.
## Module Descritption
* <strong>DataPreprocessing.m </strong>-
	This function is used to create the training dataset for the neural network. It creates two matrices; one of the matrix **training_data** is a matrix of size 54200 X 784 which stores the training examples, while the other matrix **training_output** stores the class labels corresponding to the training examples.
* <strong>TestingData.m</strong> -
	This function is used to create the testing dataset. It creates two matrices; on of the matrices **testing_data** is a matrix of size 10000 X 784 which is used to test the final trained neural network. The other matrix **testing_output** store the class labels corresponding to the testing examples.
* <strong>Visulaize.m</strong> -
	This function is used to visualze the training examples that are used to train the neural network. It converts the vector to an image of size 28 X 28 and then displays the image using **imshow()** function.
* <strong>FeedForward.m</strong> - 
	This function is used to apply the training example on the neural network and to find the final output of the hidden layer and the output layer which are then used in the Backpropagation algorithm of as the final output.
* <strong>Test.m</strong> - 
	This function is used to test the accuracy of the final trained neural network by applying feedforward on the different test examples and then matching the result with the supposed result.
* <strong>sigm.m</strong> - 
	This function applies the sigmoid activation function on the output of the hidden layer and the final output layer. This serves to bring all the weights between 0 and 1 and prevents the answer from being affected by the uneven weights of the network.
