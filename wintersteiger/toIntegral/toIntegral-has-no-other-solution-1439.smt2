(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4662270517172351080859016292379237711429595947265625 83 {+ 2099699976383785 83 (1.41805e+025)}
; 1.4662270517172351080859016292379237711429595947265625 83 I == 1.4662270517172351080859016292379237711429595947265625 83
; [HW: 1.4662270517172351080859016292379237711429595947265625 83] 

; mpf : + 2099699976383785 83
; mpfd: + 2099699976383785 83 (1.41805e+025) class: Pos. norm. non-zero
; hwf : + 2099699976383785 83 (1.41805e+025) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001010010 #b0111011101011010101001111111001110100010110100101001)))
(assert (= r (fp #b0 #b10001010010 #b0111011101011010101001111111001110100010110100101001)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
