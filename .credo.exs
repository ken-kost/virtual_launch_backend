%{
  configs: [
    %{
      name: "default",
      files: %{
        included: ["lib/", "src/", "test/", "web/", "apps/"],
        excluded: [~r"/_build/", ~r"/deps/", ~r"/node_modules/"]
      },
      requires: [],
      strict: true,
      color: true,
      checks: [
        # extra Credo checks
        {Credo.Check.Readability.AliasAs, []},
        {Credo.Check.Readability.SinglePipe, []},
        {Credo.Check.Readability.Specs, []},
        {Credo.Check.Readability.WithCustomTaggedTuple, []},
        {VBT.Credo.Check.Consistency.FileLocation, []},
        {VBT.Credo.Check.Consistency.ModuleLayout, []},
        {VBT.Credo.Check.Graphql.MutationField, []},
        {VBT.Credo.Check.Readability.MultilineSimpleDo, []},

        # disabled checks
        {Credo.Check.Consistency.SpaceAroundOperators, false},
        {Credo.Check.Design.TagTODO, false},
        {Credo.Check.Readability.ModuleDoc, false},

        # obsolete checks
        {Credo.Check.Refactor.MapInto, false},
        {Credo.Check.Warning.LazyLogging, false}
      ]
    }
  ]
}
