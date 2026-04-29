(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5877391736100125996244969428516924381256103515625p907 {+ 2646941923261096 907 (1.71785e+273)}
; 1.5877391736100125996244969428516924381256103515625p907 S == 1.78198719053197063288962453952990472316741943359375p453
; [HW: 1.78198719053197063288962453952990472316741943359375p453] 

; mpf : + 3521757219888284 453
; mpfd: + 3521757219888284 453 (4.1447e+136) class: Pos. norm. non-zero
; hwf : + 3521757219888284 453 (4.1447e+136) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110001010 #b1001011001110110000100110001000100111011101010101000)))
(assert (= r (fp #b0 #b10111000100 #b1100100000110000010100000000000100111001110010011100)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
