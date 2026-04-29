(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.416585187669300527346649687387980520725250244140625p-469 {- 1876132895955530 -469 (-9.2934e-142)}
; Y = -1.358892334177357330560198533930815756320953369140625p341 {- 1616307382467274 341 (-6.08714e+102)}
; -1.416585187669300527346649687387980520725250244140625p-469 < -1.358892334177357330560198533930815756320953369140625p341 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000101010 #b0110101010100101010100111010110100001001101001001010)))
(assert (= y (fp #b1 #b10101010100 #b0101101111100000010111100011011000010011101011001010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
