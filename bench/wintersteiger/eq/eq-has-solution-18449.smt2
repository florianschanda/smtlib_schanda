(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.248037301634469908862001830129884183406829833984375p-686 {- 1117060699214982 -686 (-3.88732e-207)}
; Y = -1.4993416435484736570771246988442726433277130126953125p875 {- 2248834839815477 875 (-3.777e+263)}
; -1.248037301634469908862001830129884183406829833984375p-686 = -1.4993416435484736570771246988442726433277130126953125p875 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101010001 #b0011111101111111010111110110001010110101010010000110)))
(assert (= y (fp #b1 #b11101101010 #b0111111111010100110110101001110010010010010100110101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
