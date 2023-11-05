import cv2
from PIL import Image
import numpy as np
import matplotlib.pyplot as plt
from tensorflow.keras.models import Model, load_model

# Load the pre-trained face detection model
face_cascade = cv2.CascadeClassifier(cv2.data.haarcascades + 'haarcascade_frontalface_default.xml')

# Load the Facial Expression Model
model = load_model('Emotion Dataset/FacialExpression_weights.hdf5')

"""# Draw Rectangels"""

def drawRectangle(image2,faces):
    from io import BytesIO

    # Display the original image with rectangles around the detected faces
    for (x, y, w, h) in faces:
        cv2.rectangle(image2, (x, y), (x+w, y+h), (0, 255, 0), 2)

    # Save the image with faces highlighted in memory using Matplotlib and BytesIO
    buffer = BytesIO()
    plt.figure(figsize=(8, 8))
    plt.imshow(cv2.cvtColor(image2, cv2.COLOR_BGR2RGB))  # Convert BGR to RGB for Matplotlib
    plt.axis('off')
    plt.savefig(buffer, format='png', bbox_inches='tight', pad_inches=0)
    plt.close()
    buffer.seek(0)
    faces_in_image = plt.imread(buffer)
    return faces_in_image

def selectFaces(faces):

    # Initialize a list to store the cropped faces
    cropped_faces = []

    # Iterate over detected faces and crop and save them
    for i, (x, y, w, h) in enumerate(faces):
        # Crop the face from the image
        cropped_face = image[y:y+h, x:x+w]
        cropped_faces.append(cropped_face)

    # Select a specific cropped face from the list
    selected_face = cropped_faces[0]
    return selected_face

"""# Make Suitable INPUT"""

def makeSuitableInput(selected_face):
    # Resize the selected face to 96x96 pixels using cv2.resize
    new_size = (96, 96)
    resized_face = cv2.resize(selected_face, new_size)

    # Convert the resized image to grayscale and then to a NumPy array
    image_array = cv2.cvtColor(resized_face, cv2.COLOR_BGR2GRAY)
    # Reshape and normalize the image
    image_array = image_array.reshape(96, 96, 1)
    image_array = image_array / 255

    test_picture = np.zeros((1, 96, 96, 1))
    test_picture[0] = image_array
    return test_picture

"""# def predictEmotion(test_picture,selected_face):"""

def predictEmotion(test_picture,selected_face):

    from io import BytesIO
    # 'Model' is the trained neural network model
    predicted_classes = model.predict(test_picture)
    predicted_class_index = np.argmax(predicted_classes, axis=-1)

    # Create a figure with a single subplot
    fig, axes = plt.subplots(1, 1, figsize=(4, 4))

    # Display the image
    image_obj = axes.imshow(selected_face)

    label_to_text = {0: 'anger', 1: 'disgust', 2: 'sad', 3: 'happy', 4: 'surprise'}
    predicted_label = label_to_text[predicted_class_index[0]]

    # Set the title
    axes.set_title('{}'.format(predicted_label), fontsize=30, y=-0.152)
    axes.axis('off')

    # Remove left and right margins
    plt.subplots_adjust(left=0, right=1)

    # Save the figure (image with title) in memory
    buffer = BytesIO()
    fig.savefig(buffer, format='png', bbox_inches='tight', pad_inches=0)
    buffer.seek(0)

    # Display the saved image from memory using Matplotlib
    saved_image = plt.imread(buffer)
    saved_image = cv2.cvtColor(saved_image, cv2.COLOR_BGR2RGB)
    plt.imshow(saved_image)
    plt.axis('off')
    plt.close()
    return saved_image

"""# process_and_compare_faces"""

def process_and_compare_faces(image):
    import cv2
    import numpy as np
    import matplotlib.pyplot as plt

    # Convert the image to grayscale for face detection
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    # Detect faces in the image
    faces = face_cascade.detectMultiScale(gray, scaleFactor=1.3, minNeighbors=5, minSize=(30, 30))
    selected_face = selectFaces(faces)

    # Make a copy of the image to avoid modifying the original
    image2 = image.copy()
    faces_in_image = drawRectangle(image2,faces)
    test_picture = makeSuitableInput(selected_face)
    saved_image = predictEmotion(test_picture,selected_face)

    images = []
    images.append(faces_in_image)
    images.append(saved_image)
    return images

"""# Call the model and show image"""

# Load the image
image = cv2.imread('/content/drive/MyDrive/Volkswagen India/Test Image/happy2.jpg')
images = process_and_compare_faces(image)

image1 = images[0]  # RGB
image2 = images[1]    # BGR

# Create a figure with three subplots
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 6))

# Display the first image in the first subplot
ax1.imshow(image1)
ax1.set_title('Face Detected')

# Display the second image in the second subplot
ax2.imshow(image2)
ax2.set_title('Model Prediction ')

# Show the figure with all three subplots
plt.show()