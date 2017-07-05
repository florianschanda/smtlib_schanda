(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9509200385413449918559081197599880397319793701171875 715 {- 4282563131233939 715 (-3.36269e+215)}
; -1.9509200385413449918559081197599880397319793701171875 715 I == -1.9509200385413449918559081197599880397319793701171875 715
; [HW: -1.9509200385413449918559081197599880397319793701171875 715] 

; mpf : - 4282563131233939 715
; mpfd: - 4282563131233939 715 (-3.36269e+215) class: Neg. norm. non-zero
; hwf : - 4282563131233939 715 (-3.36269e+215) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011001010 #b1111001101101111011111101110001010100101011010010011)))
(assert (= r (fp #b1 #b11011001010 #b1111001101101111011111101110001010100101011010010011)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
