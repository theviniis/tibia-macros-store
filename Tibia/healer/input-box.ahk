Loop
{
  InputBox, senha, Login, Digite a sua senha, HIDE, 200, 130

  if(ErrorLevel)
  {
    break
  }
  if(senha = 1234)
  {
    MsgBox, Senha correta :)
    break
  }
  else
  {
    MsgBox, Senha incorreta :(
  }
}