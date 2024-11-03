# Simple CNN Example for MNIST Classification

This example demonstrates the basic workflow of a Convolutional Neural Network (CNN) using the MNIST dataset. The MNIST dataset consists of handwritten digits from 0 to 9.

## Step-by-Step Explanation

### 1. **Data Loading and Preprocessing**
   - **Dataset**: We use the MNIST dataset, which is already split into training and test sets.
   - **Reshaping**: The images are reshaped to include a single channel dimension (`(28, 28, 1)`) since they are grayscale images.
   - **Normalization**: Pixel values are normalized to the range [0, 1] to improve model convergence.
   - **One-Hot Encoding**: Labels are converted to one-hot encoded vectors using `to_categorical()`.

### 2. **Building the CNN Model**
   - **Convolutional Layer**: The first layer applies 32 filters of size (3x3) with ReLU activation. This layer extracts features from the images.
   - **Max Pooling**: A (2x2) max pooling layer reduces the spatial dimensions of the feature maps.
   - **Second Convolutional Layer**: 64 filters of size (3x3) are applied, followed by another max pooling layer.
   - **Third Convolutional Layer**: Another set of 64 filters of size (3x3) is applied, further extracting complex features.
   - **Flatten Layer**: Converts the 2D feature maps into a 1D feature vector.
   - **Fully Connected (Dense) Layer**: A dense layer with 64 neurons and ReLU activation is added.
   - **Output Layer**: A dense layer with 10 neurons (one for each digit) and softmax activation is used for classification.

### 3. **Compiling the Model**
   - **Optimizer**: Adam optimizer is used for training the model.
   - **Loss Function**: Categorical cross-entropy is used as the loss function since this is a multi-class classification problem.
   - **Metrics**: Accuracy is used to evaluate the performance of the model.

### 4. **Training the Model**
   - The model is trained for 5 epochs with a batch size of 64.
   - A validation split of 10% is used to monitor the model's performance on unseen data during training.

### 5. **Evaluating the Model**
   - The model is evaluated on the test set to calculate the accuracy.
   - The test accuracy is printed, showing how well the model performs on unseen data.


### Submitting the Job

To submit the job to the SLURM scheduler, use the following command in your terminal:
```
sbatch cnn_mnist.slurm
```