(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5059683110712847042833573141251690685749053955078125p556 {- 2278678697201917 556 (-3.55217e+167)}
; Y = -1.917063926699038578504996621632017195224761962890625p410 {- 4130088758556714 410 (-5.06915e+123)}
; -1.5059683110712847042833573141251690685749053955078125p556 = -1.917063926699038578504996621632017195224761962890625p410 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000101011 #b1000000110000111001000111010010011011101000011111101)))
(assert (= y (fp #b1 #b10110011001 #b1110101011000100101100111001010110000011100000101010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
