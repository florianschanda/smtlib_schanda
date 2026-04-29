(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.829521245688061181766670415527187287807464599609375p-487 {+ 3735831572976662 -487 (4.57857e-147)}
; Y = 1.194437463577851854523714791866950690746307373046875p607 {+ 875668488516078 607 (6.34411e+182)}
; 1.829521245688061181766670415527187287807464599609375p-487 < 1.194437463577851854523714791866950690746307373046875p607 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000011000 #b1101010001011011100000010001110110010001010000010110)))
(assert (= y (fp #b0 #b11001011110 #b0011000111000110101001110101001100101111000111101110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
