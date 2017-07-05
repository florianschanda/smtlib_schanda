(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6192577848367968318399334748391993343830108642578125p815 {- 2788889129037277 815 (-3.53804e+245)}
; Y = -1.9387506680911996692628918026457540690898895263671875p-879 {- 4227757159009331 -879 (-4.81012e-265)}
; -1.6192577848367968318399334748391993343830108642578125p815 < -1.9387506680911996692628918026457540690898895263671875p-879 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100101110 #b1001111010000111101011011001110110101010110111011101)))
(assert (= y (fp #b1 #b00010010000 #b1111000001010001111101101011101010001100110000110011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
