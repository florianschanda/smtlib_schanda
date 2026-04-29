(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.209458344724321676721956464461982250213623046875 825 {- 943316523250096 825 (-2.70606e+248)}
; -1.209458344724321676721956464461982250213623046875 825 I == -1.209458344724321676721956464461982250213623046875 825
; [HW: -1.209458344724321676721956464461982250213623046875 825] 

; mpf : - 943316523250096 825
; mpfd: - 943316523250096 825 (-2.70606e+248) class: Neg. norm. non-zero
; hwf : - 943316523250096 825 (-2.70606e+248) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100111000 #b0011010110011111000011111110010001110111000110110000)))
(assert (= r (fp #b1 #b11100111000 #b0011010110011111000011111110010001110111000110110000)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
