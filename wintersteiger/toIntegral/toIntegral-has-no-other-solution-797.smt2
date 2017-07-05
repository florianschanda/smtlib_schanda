(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2357472179824375846379780341521836817264556884765625 766 {- 1061711083059337 766 (-4.7963e+230)}
; -1.2357472179824375846379780341521836817264556884765625 766 I == -1.2357472179824375846379780341521836817264556884765625 766
; [HW: -1.2357472179824375846379780341521836817264556884765625 766] 

; mpf : - 1061711083059337 766
; mpfd: - 1061711083059337 766 (-4.7963e+230) class: Neg. norm. non-zero
; hwf : - 1061711083059337 766 (-4.7963e+230) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011111101 #b0011110001011001111011011111111101011011100010001001)))
(assert (= r (fp #b1 #b11011111101 #b0011110001011001111011011111111101011011100010001001)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
