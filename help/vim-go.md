vim-go
---------

|                     | **Action**                                          |
|---------------------|-----------------------------------------------------|
| ^r                  | Context-aware `go build`                            |
| ^t                  | Run :GoTest                                         |
| ^i                  | Run :GoDescribe                                     |
| ^c                  | Toggle test coverage                                |
| ^cu                 | Update test coverage                                |
| K                   | Documentation for current method                    |
| gd                  | Go to definition                                    |
| <ctrl>+t            | Go back from definition                             |
|---------------------|-----------------------------------------------------|
| :A                  | Switch to alternate file                            |
| :AV                 | In vertical split                                   |
| :AS                 | In horizontal split                                 |
| :AT                 | In new tab                                          |
|---------------------|-----------------------------------------------------|
| if                  | Inner function                                      |
| af                  | Entire function                                     |
| ]]                  | Next function                                       |
| [[                  | Previous function                                   |
|---------------------|-----------------------------------------------------|
| :GoRun              | `go run`                                            |
| :GoBuild            | `go build`                                          |
|---------------------|-----------------------------------------------------|
| :GoTestCompile      | `go build` test files                               |
| :GoTest             | `go test`                                           |
| :GoTestFunc         | `go test` on current func                           |
| :GoCoverageToggle   | Toggle test coverage                                |
|---------------------|-----------------------------------------------------|
| :GoImports <import> | Add import declaration to file                      |
| :GoDrop <import>    | Drop import declaration from file                   |
| :GoRename <name>    | Rename identifier                                   |
| :GoFreevars         | Shows variables that are referenced but not defined |
| :GoGenerate         | Calls `go generate`                                 |
|---------------------|-----------------------------------------------------|
| :GoDef              | Go to defintion                                     |
| :GoDefPop           | Go back from definition                             |
| :GoDefStack         | Navigate definition stack                           |
| :GoDoc              | Documentation for current method                    |
| :GoDescribe         | Contextual information                              |
|---------------------|-----------------------------------------------------|
| :GoLint             | `go lint`                                           |
| :GoVet              | `go vet`                                            |
| :GoMetaLinter       | `golint`, `go vet` and `errcheck`                   |
|---------------------|-----------------------------------------------------|
| :T                  | Open/close tagbar                                   |
| <enter>             | Jump to tag                                         |
| p                   | Jump to tag without leaving tagbar                  |
| P                   | Jump to tag in Preview window                       |
| <space>             | Display tag prototype                               |
| <ctrl>+n            | Go to next top level tag                            |
| <ctrl>+p            | Go to previous top level tag                        |
|---------------------|-----------------------------------------------------|

### TODO: deoplete go
