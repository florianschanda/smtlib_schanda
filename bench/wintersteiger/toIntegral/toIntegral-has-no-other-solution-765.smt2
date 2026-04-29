(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8060909357552119569589876846293918788433074951171875 449 {+ 3630310837893907 449 (2.62547e+135)}
; 1.8060909357552119569589876846293918788433074951171875 449 I == 1.8060909357552119569589876846293918788433074951171875 449
; [HW: 1.8060909357552119569589876846293918788433074951171875 449] 

; mpf : + 3630310837893907 449
; mpfd: + 3630310837893907 449 (2.62547e+135) class: Pos. norm. non-zero
; hwf : + 3630310837893907 449 (2.62547e+135) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111000000 #b1100111001011011111110011011111010101011101100010011)))
(assert (= r (fp #b0 #b10111000000 #b1100111001011011111110011011111010101011101100010011)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
