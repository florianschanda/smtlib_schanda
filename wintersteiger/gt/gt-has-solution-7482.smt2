(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.608900015505095648649103168281726539134979248046875p-131 {+ 2742241882934638 -131 (5.91017e-040)}
; Y = 1.1991129967262754707491012595710344612598419189453125p891 {+ 896725217861077 891 (1.97964e+268)}
; 1.608900015505095648649103168281726539134979248046875p-131 > 1.1991129967262754707491012595710344612598419189453125p891 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101111100 #b1001101111100000110111110001010100100000110101101110)))
(assert (= y (fp #b0 #b11101111010 #b0011001011111001000100011100000100100101110111010101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
