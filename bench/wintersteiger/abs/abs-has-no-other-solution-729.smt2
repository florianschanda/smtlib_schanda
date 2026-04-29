(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4425358070909146679383638911531306803226470947265625p959 {- 1993004095912745 959 (-7.02898e+288)}
; -1.4425358070909146679383638911531306803226470947265625p959 | == 1.4425358070909146679383638911531306803226470947265625p959
; [HW: 1.4425358070909146679383638911531306803226470947265625p959] 

; mpf : + 1993004095912745 959
; mpfd: + 1993004095912745 959 (7.02898e+288) class: Pos. norm. non-zero
; hwf : + 1993004095912745 959 (7.02898e+288) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110111110 #b0111000101001010000001101101001011000011101100101001)))
(assert (= r (fp #b0 #b11110111110 #b0111000101001010000001101101001011000011101100101001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
