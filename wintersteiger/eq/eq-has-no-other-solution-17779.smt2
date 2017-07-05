(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5540423343016993573684203511220403015613555908203125p506 {- 2495184850308613 506 (-3.25567e+152)}
; Y = -1.04296373335637060364433637005276978015899658203125p359 {- 193491453534196 359 (-1.22472e+108)}
; -1.5540423343016993573684203511220403015613555908203125p506 = -1.04296373335637060364433637005276978015899658203125p359 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111111001 #b1000110111010101101101111110101001101100111000000101)))
(assert (= y (fp #b1 #b10101100110 #b0000101011111111101010111101010110101101111111110100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
