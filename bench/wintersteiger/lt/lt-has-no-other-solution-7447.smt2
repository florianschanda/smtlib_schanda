(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.440457379674821680737295537255704402923583984375p328 {+ 1983643690976112 328 (7.8766e+098)}
; Y = 1.0878308933363827204487961353152059018611907958984375p-805 {+ 395555178501351 -805 (5.09818e-243)}
; 1.440457379674821680737295537255704402923583984375p328 < 1.0878308933363827204487961353152059018611907958984375p-805 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101000111 #b0111000011000001110100001001100011111100001101110000)))
(assert (= y (fp #b0 #b00011011010 #b0001011001111100000101011101111001110101010011100111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
