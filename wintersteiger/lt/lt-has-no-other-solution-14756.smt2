(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4944932153245213957148962435894645750522613525390625p-183 {- 2226999460272753 -183 (-1.219e-055)}
; Y = -1.286065237061229549198060340131632983684539794921875p-809 {- 1288323295032606 -809 (-3.76701e-244)}
; -1.4944932153245213957148962435894645750522613525390625p-183 < -1.286065237061229549198060340131632983684539794921875p-809 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101001000 #b0111111010010111000110110111101111101001101001110001)))
(assert (= y (fp #b1 #b00011010110 #b0100100100111011100100100100010110110011010100011110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
