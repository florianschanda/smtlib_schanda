(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4459794200750153425616417735000140964984893798828125p731 {+ 2008512750064749 731 (1.63339e+220)}
; 1.4459794200750153425616417735000140964984893798828125p731 S == 1.70057603186391848026914885849691927433013916015625p365
; [HW: 1.70057603186391848026914885849691927433013916015625p365] 

; mpf : + 3155113956047044 365
; mpfd: + 3155113956047044 365 (1.27804e+110) class: Pos. norm. non-zero
; hwf : + 3155113956047044 365 (1.27804e+110) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011011010 #b0111001000101011101101010000111111101001010001101101)))
(assert (= r (fp #b0 #b10101101100 #b1011001101011000111100110110100100110111100011000100)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
