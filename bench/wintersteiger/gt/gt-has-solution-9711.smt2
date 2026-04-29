(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3657732128926103332133834555861540138721466064453125p-910 {- 1647296105285269 -910 (-1.57791e-274)}
; Y = 1.8109044171226320596446157651371322572231292724609375p-362 {+ 3651988830786575 -362 (1.92769e-109)}
; -1.3657732128926103332133834555861540138721466064453125p-910 > 1.8109044171226320596446157651371322572231292724609375p-362 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001110001 #b0101110110100011010100000011001100100000011010010101)))
(assert (= y (fp #b0 #b01010010101 #b1100111110010111011011101000111110111001010000001111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
