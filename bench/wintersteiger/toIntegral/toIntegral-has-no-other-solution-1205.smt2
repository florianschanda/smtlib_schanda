(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.136649667199147284435412075254134833812713623046875 333 {- 615415390278382 333 (-1.98891e+100)}
; -1.136649667199147284435412075254134833812713623046875 333 I == -1.136649667199147284435412075254134833812713623046875 333
; [HW: -1.136649667199147284435412075254134833812713623046875 333] 

; mpf : - 615415390278382 333
; mpfd: - 615415390278382 333 (-1.98891e+100) class: Neg. norm. non-zero
; hwf : - 615415390278382 333 (-1.98891e+100) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101001100 #b0010001011111011011110001111101110100001001011101110)))
(assert (= r (fp #b1 #b10101001100 #b0010001011111011011110001111101110100001001011101110)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
