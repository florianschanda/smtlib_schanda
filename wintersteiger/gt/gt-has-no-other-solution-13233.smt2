(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9419696336652891854868130394606851041316986083984375p453 {+ 4242254091169319 453 (4.5168e+136)}
; Y = 1.4800938256571278817119718951289542019367218017578125p-358 {+ 2162150374332317 -358 (2.52087e-108)}
; 1.9419696336652891854868130394606851041316986083984375p453 > 1.4800938256571278817119718951289542019367218017578125p-358 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111000100 #b1111000100100100111011000000001001101010111000100111)))
(assert (= y (fp #b0 #b01010011001 #b0111101011100111011011011101000000110101011110011101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
