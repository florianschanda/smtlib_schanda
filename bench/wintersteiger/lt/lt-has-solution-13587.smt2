(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.890923110534771467428072355687618255615234375p-858 {+ 4012360988620160 -858 (9.8387e-259)}
; Y = -1.509858248276688019728908329852856695652008056640625p-835 {- 2296197416950666 -835 (-6.59007e-252)}
; 1.890923110534771467428072355687618255615234375p-858 < -1.509858248276688019728908329852856695652008056640625p-835 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010100101 #b1110010000010011100010010111011011111111010110000000)))
(assert (= y (fp #b1 #b00010111100 #b1000001010000110000100011111010111110001101110001010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
