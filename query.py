# Oppdatert query.py mye bedre
from mcstatus import JavaServer #importerer for playercounter

def get_player_count(ip="192.168.9.15", port=25565): # husk riktig IP
    try:
        server = JavaServer.lookup(f"{ip}:{port}")
        status = server.status()
        return server.player.status
    except Exception as e:
        return None # noe nettverk
pass