(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7299831710485735758453529342659749090671539306640625p602 {+ 3287551937121089 602 (2.87144e+181)}
; 1.7299831710485735758453529342659749090671539306640625p602 | == 1.7299831710485735758453529342659749090671539306640625p602
; [HW: 1.7299831710485735758453529342659749090671539306640625p602] 

; mpf : + 3287551937121089 602
; mpfd: + 3287551937121089 602 (2.87144e+181) class: Pos. norm. non-zero
; hwf : + 3287551937121089 602 (2.87144e+181) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001011001 #b1011101011100000001011010101011001001000101101000001)))
(assert (= r (fp #b0 #b11001011001 #b1011101011100000001011010101011001001000101101000001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
