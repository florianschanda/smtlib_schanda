(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.641302027701453614128013214212842285633087158203125p-54 {- 2888167572988210 -54 (-9.11106e-017)}
; Y = -1.2086878975198416252823108152369968593120574951171875p-684 {- 939846737507091 -684 (-1.5059e-206)}
; -1.641302027701453614128013214212842285633087158203125p-54 > -1.2086878975198416252823108152369968593120574951171875p-684 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111001001 #b1010010000101100010111101010001111010110000100110010)))
(assert (= y (fp #b1 #b00101010011 #b0011010101101100100100011110111011101011001100010011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
