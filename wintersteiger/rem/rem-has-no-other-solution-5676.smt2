(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.986486797784664304344914853572845458984375p-161 {- 4442741574908928 -161 (-6.79605e-049)}
; Y = -1.77180575847562504776533387484960258007049560546875p-741 {- 3475904126273228 -741 (-1.53176e-223)}
; -1.986486797784664304344914853572845458984375p-161 % -1.77180575847562504776533387484960258007049560546875p-741 == -1.58104910215421856634065989055670797824859619140625p-741
; [HW: -1.58104910215421856634065989055670797824859619140625p-741] 

; mpf : - 2616812519945700 -741
; mpfd: - 2616812519945700 -741 (-1.36684e-223) class: Neg. norm. non-zero
; hwf : - 2616812519945700 -741 (-1.36684e-223) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101011110 #b1111110010001010011001100001011001101011110000000000)))
(assert (= y (fp #b1 #b00100011010 #b1100010110010101000011111110101110000100011011001100)))
(assert (= r (fp #b0 #b00100010111 #x86ab6d0328740)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
