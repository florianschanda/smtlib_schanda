(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.744112889982485370410358882509171962738037109375p256 {+ 3351186534046704 256 (2.01954e+077)}
; Y = -1.4254257358535766808671496619354002177715301513671875p-688 {- 1915947185463987 -688 (-1.10996e-207)}
; 1.744112889982485370410358882509171962738037109375p256 = -1.4254257358535766808671496619354002177715301513671875p-688 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011111111 #b1011111001111110001011101010111100000001101111110000)))
(assert (= y (fp #b1 #b00101001111 #b0110110011101000101100110111011001011110001010110011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
