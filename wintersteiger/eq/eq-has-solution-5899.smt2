(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.54101901275214903108690123190172016620635986328125p92 {- 2436533024230932 92 (-7.63076e+027)}
; Y = -1.85643092525479946885980098159052431583404541015625p-654 {- 3857021995846084 -654 (-2.48349e-197)}
; -1.54101901275214903108690123190172016620635986328125p92 = -1.85643092525479946885980098159052431583404541015625p-654 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001011011 #b1000101010000000001110001101011001001000111000010100)))
(assert (= y (fp #b1 #b00101110001 #b1101101100111111000011101001111101000000100111000100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
