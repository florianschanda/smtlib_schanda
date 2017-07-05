(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0259911532229037955943340421072207391262054443359375p-486 {- 117053747969599 -486 (-5.1353e-147)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.0259911532229037955943340421072207391262054443359375p-486 / +oo == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000011001 #b0000011010100111010110110011000100010011111000111111)))
(assert (= y (_ +oo 11 53)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)
