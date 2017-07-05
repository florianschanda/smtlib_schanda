(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8029556537762700951788019665400497615337371826171875p-663 {- 3616190783141843 -663 (-4.71084e-200)}
; Y = -1.72387462235506205843194038607180118560791015625p632 {- 3260041479501216 632 (-3.0723e+190)}
; -1.8029556537762700951788019665400497615337371826171875p-663 > -1.72387462235506205843194038607180118560791015625p632 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101101000 #b1100110110001110100000000111000100011011011111010011)))
(assert (= y (fp #b1 #b11001110111 #b1011100101001111110110001110010101101011010110100000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
