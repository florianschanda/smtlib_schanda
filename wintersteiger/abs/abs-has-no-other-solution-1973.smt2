(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9011250840062940969943383606732822954654693603515625p348 {+ 4058306592544953 348 (1.09006e+105)}
; 1.9011250840062940969943383606732822954654693603515625p348 | == 1.9011250840062940969943383606732822954654693603515625p348
; [HW: 1.9011250840062940969943383606732822954654693603515625p348] 

; mpf : + 4058306592544953 348
; mpfd: + 4058306592544953 348 (1.09006e+105) class: Pos. norm. non-zero
; hwf : + 4058306592544953 348 (1.09006e+105) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101011011 #b1110011010110000001000100010110101101001100010111001)))
(assert (= r (fp #b0 #b10101011011 #b1110011010110000001000100010110101101001100010111001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
