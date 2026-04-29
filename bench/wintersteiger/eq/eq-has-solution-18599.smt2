(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9423022216604419742935760950786061584949493408203125p450 {+ 4243751934340357 450 (5.64696e+135)}
; Y = -1.135214773566804336013547072070650756359100341796875p483 {- 608953203850446 483 (-2.83508e+145)}
; 1.9423022216604419742935760950786061584949493408203125p450 = -1.135214773566804336013547072070650756359100341796875p483 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111000001 #b1111000100111010101101111110100011111010110100000101)))
(assert (= y (fp #b1 #b10111100010 #b0010001010011101011011110111011001100111110011001110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
