(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0922736649161122191031836337060667574405670166015625 766 {+ 415563642932313 766 (4.23944e+230)}
; 1.0922736649161122191031836337060667574405670166015625 766 I == 1.0922736649161122191031836337060667574405670166015625 766
; [HW: 1.0922736649161122191031836337060667574405670166015625 766] 

; mpf : + 415563642932313 766
; mpfd: + 415563642932313 766 (4.23944e+230) class: Pos. norm. non-zero
; hwf : + 415563642932313 766 (4.23944e+230) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011111101 #b0001011110011111001111110011010100011000110001011001)))
(assert (= r (fp #b0 #b11011111101 #b0001011110011111001111110011010100011000110001011001)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
