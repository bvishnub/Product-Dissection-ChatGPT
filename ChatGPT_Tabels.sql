-- User Entity
CREATE TABLE Users (
    UserID SERIAL PRIMARY KEY,
    Username VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Registration_Date DATE NOT NULL
);

-- Message Entity
CREATE TABLE Messages (
    MessageID SERIAL PRIMARY KEY,
    SenderID INTEGER REFERENCES Users(UserID),
    RecipientID INTEGER REFERENCES Users(UserID),
    Content TEXT NOT NULL,
    Timestamp TIMESTAMP NOT NULL
);

-- Conversation Entity
CREATE TABLE Conversations (
    ConversationID SERIAL PRIMARY KEY,
    User1_ID INTEGER REFERENCES Users(UserID),
    User2_ID INTEGER REFERENCES Users(UserID),
    Start_Date DATE NOT NULL,
    End_Date DATE
);

-- Feedback Entity
CREATE TABLE Feedback (
    FeedbackID SERIAL PRIMARY KEY,
    UserID INTEGER REFERENCES Users(UserID),
    Feedback_Type VARCHAR(50) NOT NULL,
    Feedback_Content TEXT NOT NULL,
    Feedback_Date DATE NOT NULL
);

-- Interaction Entity
CREATE TABLE Interactions (
    InteractionID SERIAL PRIMARY KEY,
    UserID INTEGER REFERENCES Users(UserID),
    Interaction_Type VARCHAR(50) NOT NULL,
    Target_ID INTEGER NOT NULL,  -- Adjust the data type as per your specific needs
    Interaction_Date TIMESTAMP NOT NULL
);
