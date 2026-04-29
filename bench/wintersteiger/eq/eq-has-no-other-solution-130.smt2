(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3779187832614254727303659819881431758403778076171875p-297 {- 1701994891472467 -297 (-5.41147e-090)}
; Y = 1.1786199142551214702479001061874441802501678466796875p212 {+ 804432579280315 212 (7.7577e+063)}
; -1.3779187832614254727303659819881431758403778076171875p-297 = 1.1786199142551214702479001061874441802501678466796875p212 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011010110 #b0110000010111111010010010000111010100110111001010011)))
(assert (= y (fp #b0 #b10011010011 #b0010110110111010000010001110001000100011110110111011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
