describe 'CCR grammar', ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('language-ccr')

    runs ->
      grammar = atom.grammars.grammarForScopeName('source.ccr')

  it 'parses the grammar', ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe 'source.ccr'
