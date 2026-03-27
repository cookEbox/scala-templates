{
  description = "Scala project templates";

  outputs = { self }: {
    templates = {
      scala2 = {
        path = ./templates/scala2;
        description = "Scala 2 dev environment with direnv";
        welcomeText = ''
          Created Scala 2 template.

          Next steps:
            direnv allow
            nix develop
        '';
      };

      scala3 = {
        path = ./templates/scala3;
        description = "Scala 3 dev environment with direnv";
        welcomeText = ''
          Created Scala 3 template.

          Next steps:
            direnv allow
            nix develop
        '';
      };

      default = self.templates.scala3;
    };
  };
}
