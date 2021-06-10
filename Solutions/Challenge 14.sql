/* Challenge 14

Add the following books to the books table:

Title: Dracula
Author: Bram Stoker
Year: 1897
New ID: 4819277482

Title: Gulliver's Travels
Author: Jonathan Swift
Year: 1792
New ID: 4899254401

*/

INSERT INTO Books (Title, Author, Published, Barcode)
VALUES (
    (SELECT Title FROM Books WHERE Title LIKE("%Gulliver%")),
    (SELECT Author FROM Books WHERE Title LIKE("%Gulliver%")),
    (SELECT Published FROM Books WHERE Title LIKE("%Gulliver%")),
    4899254401
);

INSERT INTO Books (Title, Author, Published, Barcode)
VALUES (
    (SELECT Title FROM Books WHERE Title="Dracula"),
    (SELECT Author FROM Books WHERE Title="Dracula"),
    (SELECT Published FROM Books WHERE Title="Dracula"),
    4819277482
);

