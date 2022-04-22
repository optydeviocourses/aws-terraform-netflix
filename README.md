# AWS com Terraform e estrutura similar ao Youtube

### Curso da hackone

### <https://notepad.pw/rbts523d>

### Script da Aula 1 - 04/04

1. Criar S3

- nome do bucket = cloud2022bruno

- subir 2 videos de 500 MB

- Deixar subindo os arquivos ..

2. Criar CloudFront

- Criar OAI - OAI-S3 wd

- Anotar o endereço do seu CloudFront

```
<https://XXXXXXXXXXX.cloudfront.netf>

<https://d2l1ttnh2j5jqu.cloudfront.net>

<https://d2l1ttnh2j5jqu.cloudfront.net/DEMO+CloudForm.mp4>

<https://d2l1ttnh2j5jqu.cloudfront.net/TEORIA+-+FORM+BEAN.mp4>
```

- Copiar os Links dos arquivos do S3 ...

Volte a console do S3 para copiar os links do S3 para adicionar no site

- Criar EC2 Golden Image

3. Criar T2 micro

- Tag - EC2-AMI-Template

- Security Group - SG-WEBNETFLIX

- Libera Porta - 22 SSH e 80 TCP

4. Criar Key Pair

- Conectar na EC2 pelo Instance Connect

- Dentro do shell

```bash
yum update -y
yum install httpd -y
chkconfig httpd on
service httpd start
cd /var/www/html
vim index.html
```

- pressione i - para entrar no modo de inserção
- Editar o endereço do cloudfront
- Copia e Cola no VIM

```
<html><h1><body bgcolor="#F59411">HACKONE NETFLIX COM CDN</body></h1>
<video controls="controls" controlsList=”nodownload” width="640" height="360">
    <source src="https://drrkpbblokfa.cloudfront.net/AULA+1+(OS+7+MAIORES+ERROS+%F0%9F%9A%AB+NA+EDUCA%C3%87%C3%83O+CANINA)+JORNADA+DO+CACHORRO+EDUCAD.mp4
" type="video/mp4"></video>
<video controls="controls" controlsList=”nodownload” width="640" height="360">
    <source src="https://drrkpbblokfa.cloudfront.net/AULA+2+(%F0%9F%90%BE+5+PILARES+DA+EDUCA%C3%87%C3%83O+CANINA)+JORNADA+DO+CACHORRO+EDUCAD.mp4" type="video/mp4"></video>
</html>
```

- Digitar - ESC (para sair do modo editor)
- Digitar - :wq (para salvar e sair do VIM)

Instalar:

```
yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install stress -y
```

5. Criar a AMI Template

- Nome - AMI-NETFLIX-HACKONE

5.1 Criar IMAGE

Assim finalizamos o laboratório de hoje dia 04/04 nossa primeira aula!
