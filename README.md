# homebrew-tap

Casks dos apps de NovaisVictor.

## NotchFull

```bash
brew tap novaisvictor/tap
brew trust novaisvictor/tap
brew install --cask notchfull
```

O NotchFull ainda não é notarizado. Na primeira abertura, libere em
**Ajustes do Sistema → Privacidade e Segurança → Abrir mesmo assim**, ou rode:

```bash
xattr -dr com.apple.quarantine /Applications/NotchFull.app
```

O cask é atualizado automaticamente a cada release do
[notchFull](https://github.com/NovaisVictor/notchFull).
