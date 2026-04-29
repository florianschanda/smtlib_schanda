(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.18631126584151846969916732632555067539215087890625p786 {- 839071347418788 786 (-4.82809e+236)}
; Y = -1.803456190376917955831004292122088372707366943359375p98 {- 3618444999590006 98 (-5.71538e+029)}
; -1.18631126584151846969916732632555067539215087890625p786 = -1.803456190376917955831004292122088372707366943359375p98 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100010001 #b0010111110110010000110000101100110101010011010100100)))
(assert (= y (fp #b1 #b10001100001 #b1100110110101111010011100000110101110000000001110110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
