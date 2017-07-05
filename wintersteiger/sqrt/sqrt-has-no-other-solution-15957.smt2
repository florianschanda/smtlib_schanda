(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7072328924376589665001802131882868707180023193359375p-106 {+ 3185093790846399 -106 (2.10433e-032)}
; 1.7072328924376589665001802131882868707180023193359375p-106 S == 1.306611224671538895591993423295207321643829345703125p-53
; [HW: 1.306611224671538895591993423295207321643829345703125p-53] 

; mpf : + 1380854197178354 -53
; mpfd: + 1380854197178354 -53 (1.45063e-016) class: Pos. norm. non-zero
; hwf : + 1380854197178354 -53 (1.45063e-016) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110010101 #b1011010100001101001101101111111110101100110110111111)))
(assert (= r (fp #b0 #b01111001010 #b0100111001111110000100101011111010001100111111110010)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
