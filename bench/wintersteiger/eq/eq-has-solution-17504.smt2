(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4826881443654489345362890162505209445953369140625p769 {+ 2173834147100392 769 (4.6038e+231)}
; Y = -1.7748006855408817727948189713060855865478515625p-270 {- 3489392078688320 -270 (-9.35515e-082)}
; 1.4826881443654489345362890162505209445953369140625p769 = -1.7748006855408817727948189713060855865478515625p-270 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100000000 #b0111101110010001011100110100001000110111011011101000)))
(assert (= y (fp #b1 #b01011110001 #b1100011001011001010101100111010101010001000001000000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
