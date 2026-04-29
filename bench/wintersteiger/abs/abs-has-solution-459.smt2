(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.73687256835851844272156085935421288013458251953125p1013 {+ 3318579024278964 1013 (1.52459e+305)}
; 1.73687256835851844272156085935421288013458251953125p1013 | == 1.73687256835851844272156085935421288013458251953125p1013
; [HW: 1.73687256835851844272156085935421288013458251953125p1013] 

; mpf : + 3318579024278964 1013
; mpfd: + 3318579024278964 1013 (1.52459e+305) class: Pos. norm. non-zero
; hwf : + 3318579024278964 1013 (1.52459e+305) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111110100 #b1011110010100011101011100011111001101011010110110100)))
(assert (= r (fp #b0 #b11111110100 #b1011110010100011101011100011111001101011010110110100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
