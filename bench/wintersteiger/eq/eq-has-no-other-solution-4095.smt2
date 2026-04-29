(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.091494198773958590464872031589038670063018798828125p371 {- 412053239504962 371 (-5.24989e+111)}
; Y = -1.4768576488288729375852881275932304561138153076171875p583 {- 2147575929574483 583 (-4.67548e+175)}
; -1.091494198773958590464872031589038670063018798828125p371 = -1.4768576488288729375852881275932304561138153076171875p583 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101110010 #b0001011101101100001010011110111110000010000001000010)))
(assert (= y (fp #b1 #b11001000110 #b0111101000010011010101111100011010010001010001010011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
