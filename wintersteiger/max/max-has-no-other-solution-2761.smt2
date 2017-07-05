(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0611173814112764279826706115272827446460723876953125p697 {- 275248216149685 697 (-6.97703e+209)}
; Y = 1.733986918859299120043715447536669671535491943359375p796 {+ 3305583214269558 796 (7.22641e+239)}
; -1.0611173814112764279826706115272827446460723876953125p697 M 1.733986918859299120043715447536669671535491943359375p796 == 1.733986918859299120043715447536669671535491943359375p796
; [HW: 1.733986918859299120043715447536669671535491943359375p796] 

; mpf : + 3305583214269558 796
; mpfd: + 3305583214269558 796 (7.22641e+239) class: Pos. norm. non-zero
; hwf : + 3305583214269558 796 (7.22641e+239) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010111000 #b0000111110100101011000111000001001100000111010110101)))
(assert (= y (fp #b0 #b11100011011 #b1011101111100110100100010001010000110001010001110110)))
(assert (= r (fp #b0 #b11100011011 #b1011101111100110100100010001010000110001010001110110)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
