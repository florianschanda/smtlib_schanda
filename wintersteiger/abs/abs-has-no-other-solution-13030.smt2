(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5493171612634004663533460188773460686206817626953125p-455 {- 2473904562774069 -455 (-1.6653e-137)}
; -1.5493171612634004663533460188773460686206817626953125p-455 | == 1.5493171612634004663533460188773460686206817626953125p-455
; [HW: 1.5493171612634004663533460188773460686206817626953125p-455] 

; mpf : + 2473904562774069 -455
; mpfd: + 2473904562774069 -455 (1.6653e-137) class: Pos. norm. non-zero
; hwf : + 2473904562774069 -455 (1.6653e-137) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000111000 #b1000110010100000000011001010101011000010000000110101)))
(assert (= r (fp #b0 #b01000111000 #b1000110010100000000011001010101011000010000000110101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
