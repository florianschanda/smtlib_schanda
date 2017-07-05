(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2853760030361998101255949222831986844539642333984375p172 {+ 1285219260934311 172 (7.69466e+051)}
; Y = 1.378148019488475650717873577377758920192718505859375p311 {+ 1703027279659190 311 (5.74943e+093)}
; 1.2853760030361998101255949222831986844539642333984375p172 < 1.378148019488475650717873577377758920192718505859375p311 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010101011 #b0100100100001110011001101101100000011010100010100111)))
(assert (= y (fp #b0 #b10100110110 #b0110000011001110010011110000000011000000000010110110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
