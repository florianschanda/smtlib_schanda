(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6044970168383134723200100779649801552295684814453125p535 {- 2722412539779605 535 (-1.80462e+161)}
; Y = -1.2338339997147469428995236739865504205226898193359375p468 {- 1053094713981887 468 (-9.40361e+140)}
; -1.6044970168383134723200100779649801552295684814453125p535 = -1.2338339997147469428995236739865504205226898193359375p468 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000010110 #b1001101011000000010100010000010111011001101000010101)))
(assert (= y (fp #b1 #b10111010011 #b0011101111011100100010111000010101110111101110111111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
