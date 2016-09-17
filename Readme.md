# Centos + Apache
Este são os passos para ter um servidor web com ngix no centos de forma rapida e simples.
  para tal execute os comandos abaixo.

### Pre-requisitos

Sera necessario a instalação do _**Ansible, docker e git**_ para executação dos comandos abaixo.

 [Ansible Documentation](http://docs.ansible.com/ansible/) <br>
 [Docker Documentation](https://docs.docker.com/)

```bash
# git clone https://github.com/marconesns/apache-centos.git
# cd apache-centos
```
Primeiro você deve editar o arquivos hosts e alterar as inforamações de acordo com o seu ambiente.

```
[server]
localhost

[server:vars]
ansible_ssh_user=root
```
Também será necessario editar o arquivo apache_playbook.yml e alterar a variavel com caminho do diretório que contém o Dockerfile.
```
[...]
  dockerfile: <caminho absoluto Dockerfile>
```

Agora vamos a executação do playbook. proceda com os comandos abaixo.
  É interessante ver se você tem comunicação com todos os hosts, faça um teste
  com o modulo ping do ansible.

```bash
# ansible server -i hosts -m ping
```
Esta é uma saída correta.
```bash
localhost | SUCCESS => {
    "changed": false,
    "ping": "pong"
}
```

Pronto agora vamos executar o playbook propriamente dito.

```bash
# ansible-playbook -i hosts apache_playbook.yml
```
