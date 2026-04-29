(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9892847420457233642565597619977779686450958251953125p438 {- 4455342395640437 438 (-1.412e+132)}
; Y = 1.715435520277036385294877618434838950634002685546875p802 {+ 3222035142527278 802 (4.57542e+241)}
; -1.9892847420457233642565597619977779686450958251953125p438 = 1.715435520277036385294877618434838950634002685546875p802 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110110101 #b1111110101000001110000111100110110000100101001110101)))
(assert (= y (fp #b0 #b11100100001 #b1011011100100110110010000100000111111100100100101110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
