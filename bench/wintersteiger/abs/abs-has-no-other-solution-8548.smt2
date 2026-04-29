(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8007975222181114016706260372302494943141937255859375p-975 {- 3606471422660703 -975 (-5.63922e-294)}
; -1.8007975222181114016706260372302494943141937255859375p-975 | == 1.8007975222181114016706260372302494943141937255859375p-975
; [HW: 1.8007975222181114016706260372302494943141937255859375p-975] 

; mpf : + 3606471422660703 -975
; mpfd: + 3606471422660703 -975 (5.63922e-294) class: Pos. norm. non-zero
; hwf : + 3606471422660703 -975 (5.63922e-294) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000110000 #b1100110100000001000100010000000010100101000001011111)))
(assert (= r (fp #b0 #b00000110000 #b1100110100000001000100010000000010100101000001011111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
