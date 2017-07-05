(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.085597423950114492896545925759710371494293212890625p-735 {+ 385496526605610 -735 (6.00651e-222)}
; Y = -1.0261497049000978254440497039468027651309967041015625p-955 {- 117767801243929 -955 (-3.3695e-288)}
; 1.085597423950114492896545925759710371494293212890625p-735 > -1.0261497049000978254440497039468027651309967041015625p-955 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100100000 #b0001010111101001101101100111100001111100110100101010)))
(assert (= y (fp #b1 #b00001000100 #b0000011010110001101111110011111101011000100100011001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
