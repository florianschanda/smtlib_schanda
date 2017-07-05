(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.843297283580032530636572118964977562427520751953125p-397 {- 3797873332093586 -397 (-5.71067e-120)}
; Y = 1.83344096699661651683754826080985367298126220703125p-535 {+ 3753484428401268 -535 (1.63012e-161)}
; -1.843297283580032530636572118964977562427520751953125p-397 < 1.83344096699661651683754826080985367298126220703125p-535 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001110010 #b1101011111100010010101001010110111001000001010010010)))
(assert (= y (fp #b0 #b00111101000 #b1101010101011100011000110010000001100101101001110100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
