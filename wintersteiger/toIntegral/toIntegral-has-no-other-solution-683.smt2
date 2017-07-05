(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2259984339190577173894780571572482585906982421875 868 {+ 1017806462784184 868 (2.41283e+261)}
; 1.2259984339190577173894780571572482585906982421875 868 I == 1.2259984339190577173894780571572482585906982421875 868
; [HW: 1.2259984339190577173894780571572482585906982421875 868] 

; mpf : + 1017806462784184 868
; mpfd: + 1017806462784184 868 (2.41283e+261) class: Pos. norm. non-zero
; hwf : + 1017806462784184 868 (2.41283e+261) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101100011 #b0011100111011011000010001000101010100001001010111000)))
(assert (= r (fp #b0 #b11101100011 #b0011100111011011000010001000101010100001001010111000)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
