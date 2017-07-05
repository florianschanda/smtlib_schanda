(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.840173941554933190190013192477636039257049560546875 147 {+ 3783807050113198 147 (3.28298e+044)}
; 1.840173941554933190190013192477636039257049560546875 147 I == 1.840173941554933190190013192477636039257049560546875 147
; [HW: 1.840173941554933190190013192477636039257049560546875 147] 

; mpf : + 3783807050113198 147
; mpfd: + 3783807050113198 147 (3.28298e+044) class: Pos. norm. non-zero
; hwf : + 3783807050113198 147 (3.28298e+044) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010010010 #b1101011100010101101000111011000111101110000010101110)))
(assert (= r (fp #b0 #b10010010010 #b1101011100010101101000111011000111101110000010101110)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
