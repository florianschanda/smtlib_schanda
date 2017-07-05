(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8284593958233854582573485458851791918277740478515625p696 {- 3731049426321785 696 (-6.01122e+209)}
; Y = 1.0397058472816780305691963803838007152080535888671875p-636 {+ 178819239022195 -636 (3.64614e-192)}
; -1.8284593958233854582573485458851791918277740478515625p696 < 1.0397058472816780305691963803838007152080535888671875p-636 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010110111 #b1101010000010101111010100011101100100000000101111001)))
(assert (= y (fp #b0 #b00110000011 #b0000101000101010001010011001001110001000111001110011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
