(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.155354879926058675465583291952498257160186767578125p-994 {+ 699656179345186 -994 (6.9008e-300)}
; Y = 1.70924769539108201144017584738321602344512939453125p876 {+ 3194167656676660 876 (8.61155e+263)}
; 1.155354879926058675465583291952498257160186767578125p-994 > 1.70924769539108201144017584738321602344512939453125p876 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000011101 #b0010011111000101010101100110000010001110011100100010)))
(assert (= y (fp #b0 #b11101101011 #b1011010110010001010000011100100001110111110100110100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
