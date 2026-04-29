(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.555045322443087574271203266107477247714996337890625p-809 {+ 2499701907328426 -809 (4.55488e-244)}
; Y = 1.5508794066083397833466506199329160153865814208984375p794 {+ 2480940290327399 794 (1.61583e+239)}
; 1.555045322443087574271203266107477247714996337890625p-809 = 1.5508794066083397833466506199329160153865814208984375p794 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011010110 #b1000111000010111011100110100001110110000110110101010)))
(assert (= y (fp #b0 #b11100011001 #b1000110100000110011011101100101101101100001101100111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
