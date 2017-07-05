(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9787539538870355659838651263271458446979522705078125p587 {+ 4407915942013053 587 (1.0023e+177)}
; Y = -1.96837647745048638370235494221560657024383544921875p-957 {- 4361179943000364 -957 (-1.61585e-288)}
; 1.9787539538870355659838651263271458446979522705078125p587 M -1.96837647745048638370235494221560657024383544921875p-957 == 1.9787539538870355659838651263271458446979522705078125p587
; [HW: 1.9787539538870355659838651263271458446979522705078125p587] 

; mpf : + 4407915942013053 587
; mpfd: + 4407915942013053 587 (1.0023e+177) class: Pos. norm. non-zero
; hwf : + 4407915942013053 587 (1.0023e+177) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001001010 #b1111101010001111100111100111111011000110100001111101)))
(assert (= y (fp #b1 #b00001000010 #b1111011111100111100001010101010011011101100100101100)))
(assert (= r (fp #b0 #b11001001010 #b1111101010001111100111100111111011000110100001111101)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
