(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.052595511620902701821478331112302839756011962890625p980 {- 236869126537258 980 (-1.07562e+295)}
; -1.052595511620902701821478331112302839756011962890625p980 | == 1.052595511620902701821478331112302839756011962890625p980
; [HW: 1.052595511620902701821478331112302839756011962890625p980] 

; mpf : + 236869126537258 980
; mpfd: + 236869126537258 980 (1.07562e+295) class: Pos. norm. non-zero
; hwf : + 236869126537258 980 (1.07562e+295) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111010011 #b0000110101110110111001100100001001010100000000101010)))
(assert (= r (fp #b0 #b11111010011 #b0000110101110110111001100100001001010100000000101010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
