(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.275219320231259612086205379455350339412689208984375 39 {+ 1239477628038662 39 (7.01059e+011)}
; 1.275219320231259612086205379455350339412689208984375 39 I == 1.27521932023228146135807037353515625 39
; [HW: 1.27521932023228146135807037353515625 39] 

; mpf : + 1239477628043264 39
; mpfd: + 1239477628043264 39 (7.01059e+011) class: Pos. norm. non-zero
; hwf : + 1239477628043264 39 (7.01059e+011) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000100110 #b0100011001110100110001011111101110011110111000000110)))
(assert (= r (fp #b0 #b10000100110 #b0100011001110100110001011111101110100000000000000000)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
