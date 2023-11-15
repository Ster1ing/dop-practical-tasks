import json
import xml.etree.ElementTree as ET


def xml_to_dict(xml_data):
    result = {}
    for child in xml_data:
        if len(child) == 0:
            if child.text.isnumeric():
                result[child.tag] = int(child.text)
            else:
                result[child.tag] = child.text
        else:
            result[child.tag] = xml_to_dict(ET.tostring(child))
    return result


def parse_books(json_string, xml_string):
    books = json.loads(json_string)
    for book in ET.fromstring(xml_string):
        books.append(xml_to_dict(book))
    return books
