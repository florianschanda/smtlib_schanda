(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.98833202318547552778227327507920563220977783203125p90 {- 4451051731336436 90 (-2.46144e+027)}
; Y = 1.3479148728721550565268216814729385077953338623046875p-340 {+ 1566869291823691 -340 (6.01816e-103)}
; -1.98833202318547552778227327507920563220977783203125p90 = 1.3479148728721550565268216814729385077953338623046875p-340 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001011001 #b1111110100000011010100111101010100101011110011110100)))
(assert (= y (fp #b0 #b01010101011 #b0101100100010000111100101111100011000111001001001011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
