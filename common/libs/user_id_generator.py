import uuid

def userIdGenerator(name):

    id = uuid.uuid4()
    id = str(id)[:13]
    userId = name + id

    return userId