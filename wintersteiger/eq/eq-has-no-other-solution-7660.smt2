(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4082811187903121474818135538953356444835662841796875p621 {- 1838734694446459 621 (-1.22551e+187)}
; Y = 1.239105828340140380561251731705851852893829345703125p-635 {+ 1076836919414770 -635 (8.69083e-192)}
; -1.4082811187903121474818135538953356444835662841796875p621 = 1.239105828340140380561251731705851852893829345703125p-635 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001101100 #b0110100010000101000111001000010011000111010101111011)))
(assert (= y (fp #b0 #b00110000100 #b0011110100110110000010100010000100000000111111110010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
