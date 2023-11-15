The JSON string and xml string will contain information about books, including their title, author, and publication year.
Extract the information and store it in a list of dictionaries, where each dictionary represents a book.

For example:
json_string = '[ { "title": "Pride and Prejudice",    "author": "Jane Austen",    "year": 1813  },  {    "title": "Moby-Dick",    "author": "Herman Melville",    "year": 1851  },  {    "title": "Little Women",    "author": "Louisa May Alcott",    "year": 1868  }]'
xml_string = '<books><book><title>The Great Gatsby</title><author>F. Scott Fitzgerald</author><year>1925</year></book><book><title>To Kill a Mockingbird</title><author>Harper Lee</author><year>1960</year></book></books>'

books = parse_books(json_string, xml_string)
for book in books:
    print(book)
