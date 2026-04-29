(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7995042224943051945018623882788233458995819091796875p150 {+ 3600646918506491 150 (2.56834e+045)}
; 1.7995042224943051945018623882788233458995819091796875p150 | == 1.7995042224943051945018623882788233458995819091796875p150
; [HW: 1.7995042224943051945018623882788233458995819091796875p150] 

; mpf : + 3600646918506491 150
; mpfd: + 3600646918506491 150 (2.56834e+045) class: Pos. norm. non-zero
; hwf : + 3600646918506491 150 (2.56834e+045) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010010101 #b1100110010101100010011110000100010100000011111111011)))
(assert (= r (fp #b0 #b10010010101 #b1100110010101100010011110000100010100000011111111011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
