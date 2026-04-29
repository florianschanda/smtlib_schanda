(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3853296413667879338760258178808726370334625244140625p968 {- 1735370429274273 968 (-3.45612e+291)}
; -1.3853296413667879338760258178808726370334625244140625p968 | == 1.3853296413667879338760258178808726370334625244140625p968
; [HW: 1.3853296413667879338760258178808726370334625244140625p968] 

; mpf : + 1735370429274273 968
; mpfd: + 1735370429274273 968 (3.45612e+291) class: Pos. norm. non-zero
; hwf : + 1735370429274273 968 (3.45612e+291) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111000111 #b0110001010100100111101101001111111011001100010100001)))
(assert (= r (fp #b0 #b11111000111 #b0110001010100100111101101001111111011001100010100001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
