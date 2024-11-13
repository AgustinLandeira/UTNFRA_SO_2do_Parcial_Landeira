cd roles/
cd 2do_parcial/
mkdir templates
cd templates/

#creo la plantilla datos_alumno.txt.j2
vim datos_alumno.txt.j2
Nombre: {{Nombre}}
Apellido: {{Apellido}}
Division: {{Division}}
#creo la plantilla datos_equipos.txt.j2
vim datos_equipo.txt.j2
IP: {{ansible_default_ipv4.address}}
Distribucion: {{ansible_distribution}} {{ansible_distribution_version}}
Cantidad de Cores: {{ansible_processor_cores}}
#en el archivo vars le doy valor a esas variables
vim vars/main.yml
Nombre : "Agustin"
Apellido: "Landeira"
Division: "114"

#modifico el archivo visudo para que mi usuario no tenga que ingresar su contraseña y tambien se le aplicara al usuario que forme parte de 2PSupervisores
%landeira ALL=(ALL:ALL) NOPASSWD: ALL
%2PSupervisores ALL=(ALL) ALL

#esta fueron las tareas que puse
# tasks file for 2do_parcial

---

- name: Crear estructura de directorios en un solo comando
  become: yes
  file:
    path: "/tmp/2do_parcial/alumno"
    state: directory
    mode: '0755'
    recurse: yes

- name: Crear estructura de directorios en un solo comando
  become: yes
  file:
    path: "/tmp/2do_parcial/equipo"
    state: directory
    mode: '0755'
    recurse: yes

- name: generar archivo datos_alumno.txt
  become: yes
  template:
    src: datos_alumno.txt.j2
    dest: /tmp/2do_parcial/alumno/datos_alumno.txt
    mode: '0755'

- name: generar archivo datos_equipo.txt
  become: yes
  template:
    src: datos_equipo.txt.j2
    dest: /tmp/2do_parcial/equipo/datos_equipo.txt
    mode: '0755'

- name: Configurar sudoers para el grupo 2PSupervisores sin contraseña
  become: yes
  lineinfile:
    path: /etc/sudoers
    state: present
    regexp: '^%2PSupervisores'
    line: '%2PSupervisores ALL=(ALL) NOPASSWD: ALL'
    validate: 'visudo -cf %s'
#ejecuto la tarea
-ansible-playbook -i inventory/hosts playbook.yml

