(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2916742540436139119464087343658320605754852294921875 912 {+ 1313584061824387 912 (4.47207e+274)}
; 1.2916742540436139119464087343658320605754852294921875 912 I == 1.2916742540436139119464087343658320605754852294921875 912
; [HW: 1.2916742540436139119464087343658320605754852294921875 912] 

; mpf : + 1313584061824387 912
; mpfd: + 1313584061824387 912 (4.47207e+274) class: Pos. norm. non-zero
; hwf : + 1313584061824387 912 (4.47207e+274) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110001111 #b0100101010101011001010011111011000110011110110000011)))
(assert (= r (fp #b0 #b11110001111 #b0100101010101011001010011111011000110011110110000011)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
