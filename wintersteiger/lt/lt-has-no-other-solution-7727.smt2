(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7634028374798589311467367224395275115966796875p-56 {- 3438060734407872 -56 (-2.44721e-017)}
; Y = 1.4245843730867491228053722807089798152446746826171875p976 {+ 1912158024420819 976 (9.09838e+293)}
; -1.7634028374798589311467367224395275115966796875p-56 < 1.4245843730867491228053722807089798152446746826171875p976 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111000111 #b1100001101101110010111100100110010100110010011000000)))
(assert (= y (fp #b0 #b11111001111 #b0110110010110001100011111011110011001100110111010011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
