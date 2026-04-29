(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9105010324890845385681359402951784431934356689453125p-500 {+ 4100532110638293 -500 (5.83646e-151)}
; Y = 1.260244067738476747564391189371235668659210205078125p661 {+ 1172035086492386 661 (1.20582e+199)}
; 1.9105010324890845385681359402951784431934356689453125p-500 < 1.260244067738476747564391189371235668659210205078125p661 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000001011 #b1110100100010110100110000111110110000011110011010101)))
(assert (= y (fp #b0 #b11010010100 #b0100001010011111010110101110111111101010001011100010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
