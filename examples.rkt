## Racket by Example

### Renaming an import or core language function

; renames define to def
(require (rename-in racket/base [define def]))
