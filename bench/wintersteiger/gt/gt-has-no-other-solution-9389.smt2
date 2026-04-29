(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.38897817799334166721791916643269360065460205078125p-617 {+ 1751801977466068 -617 (2.55381e-186)}
; Y = 1.2488280659382462456363782621338032186031341552734375p720 {+ 1120621985038807 720 (6.8881e+216)}
; 1.38897817799334166721791916643269360065460205078125p-617 > 1.2488280659382462456363782621338032186031341552734375p720 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110010110 #b0110001110010100000100101110100101010110110011010100)))
(assert (= y (fp #b0 #b11011001111 #b0011111110110011001100100011010110001000000111010111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
