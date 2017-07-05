(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3176639322033942836043252100353129208087921142578125p464 {- 1430631166700253 464 (-6.27657e+139)}
; Y = -1.90443438556541178030556693556718528270721435546875p906 {- 4073210361813452 906 (-1.03025e+273)}
; -1.3176639322033942836043252100353129208087921142578125p464 > -1.90443438556541178030556693556718528270721435546875p906 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111001111 #b0101000101010010011011000110011111101110101011011101)))
(assert (= y (fp #b1 #b11110001001 #b1110011110001001000000110000101101100001100111001100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
