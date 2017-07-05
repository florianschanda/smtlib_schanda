(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6437236063260751706138762529008090496063232421875 492 {+ 2899073393579704 492 (2.10178e+148)}
; 1.6437236063260751706138762529008090496063232421875 492 I == 1.6437236063260751706138762529008090496063232421875 492
; [HW: 1.6437236063260751706138762529008090496063232421875 492] 

; mpf : + 2899073393579704 492
; mpfd: + 2899073393579704 492 (2.10178e+148) class: Pos. norm. non-zero
; hwf : + 2899073393579704 492 (2.10178e+148) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111101011 #b1010010011001011000100011111110011010101011010111000)))
(assert (= r (fp #b0 #b10111101011 #b1010010011001011000100011111110011010101011010111000)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
