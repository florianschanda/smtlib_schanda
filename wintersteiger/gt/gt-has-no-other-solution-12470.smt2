(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.607885495398989394999489377369172871112823486328125p357 {- 2737672890562818 357 (-4.72023e+107)}
; Y = 1.3529823554742004265705190846347250044345855712890625p909 {+ 1589691204581969 909 (5.85542e+273)}
; -1.607885495398989394999489377369172871112823486328125p357 > 1.3529823554742004265705190846347250044345855712890625p909 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101100100 #b1001101110011110011000100100001001110011100100000010)))
(assert (= y (fp #b0 #b11110001100 #b0101101001011101000011010011100011010011101001010001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
