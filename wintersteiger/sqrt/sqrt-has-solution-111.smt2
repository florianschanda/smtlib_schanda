(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.22030560233722606966466628364287316799163818359375p-837 {+ 992168228593564 -837 (1.33156e-252)}
; 1.22030560233722606966466628364287316799163818359375p-837 S == 1.5622455647798945133075676494627259671688079833984375p-419
; [HW: 1.5622455647798945133075676494627259671688079833984375p-419] 

; mpf : + 2532128916033447 -419
; mpfd: + 2532128916033447 -419 (1.15393e-126) class: Pos. norm. non-zero
; hwf : + 2532128916033447 -419 (1.15393e-126) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010111010 #b0011100001100101111100101010110100101001111110011100)))
(assert (= r (fp #b0 #b01001011100 #b1000111111101111010100110100100100001100111110100111)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
