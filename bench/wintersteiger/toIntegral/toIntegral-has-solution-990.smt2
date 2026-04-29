(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0316901984301998229653918315307237207889556884765625 46 {- 142719965841545 46 (-7.25987e+013)}
; -1.0316901984301998229653918315307237207889556884765625 46 I == -1.0316901984302120354186627082526683807373046875 46
; [HW: -1.0316901984302120354186627082526683807373046875 46] 

; mpf : - 142719965841600 46
; mpfd: - 142719965841600 46 (-7.25987e+013) class: Neg. norm. non-zero
; hwf : - 142719965841600 46 (-7.25987e+013) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000101101 #b0000100000011100110110010100110111011100100010001001)))
(assert (= r (fp #b1 #b10000101101 #b0000100000011100110110010100110111011100100011000000)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
