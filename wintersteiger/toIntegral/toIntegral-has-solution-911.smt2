(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5828193700138555310985566393355838954448699951171875 181 {- 2624785097618707 181 (-4.85133e+054)}
; -1.5828193700138555310985566393355838954448699951171875 181 I == -1.5828193700138555310985566393355838954448699951171875 181
; [HW: -1.5828193700138555310985566393355838954448699951171875 181] 

; mpf : - 2624785097618707 181
; mpfd: - 2624785097618707 181 (-4.85133e+054) class: Neg. norm. non-zero
; hwf : - 2624785097618707 181 (-4.85133e+054) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010110100 #b1001010100110011101001100111010110101111010100010011)))
(assert (= r (fp #b1 #b10010110100 #b1001010100110011101001100111010110101111010100010011)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
