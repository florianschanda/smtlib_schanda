(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0870881551305575651866774933296255767345428466796875p-196 {- 392210182994363 -196 (-1.08239e-059)}
; Y = -1.756887794199772923064983842778019607067108154296875p115 {- 3408719587919374 115 (-7.29783e+034)}
; -1.0870881551305575651866774933296255767345428466796875p-196 > -1.756887794199772923064983842778019607067108154296875p115 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100111011 #b0001011001001011011010001100101000100111100110111011)))
(assert (= y (fp #b1 #b10001110010 #b1100000111000011011001100000001011010100011000001110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
