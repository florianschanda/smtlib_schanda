(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9450763063997043023078958867699839174747467041015625p-965 {- 4256245301338393 -965 (-6.23722e-291)}
; -1.9450763063997043023078958867699839174747467041015625p-965 | == 1.9450763063997043023078958867699839174747467041015625p-965
; [HW: 1.9450763063997043023078958867699839174747467041015625p-965] 

; mpf : + 4256245301338393 -965
; mpfd: + 4256245301338393 -965 (6.23722e-291) class: Pos. norm. non-zero
; hwf : + 4256245301338393 -965 (6.23722e-291) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000111010 #b1111000111110000100001010101010000110110000100011001)))
(assert (= r (fp #b0 #b00000111010 #b1111000111110000100001010101010000110110000100011001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
