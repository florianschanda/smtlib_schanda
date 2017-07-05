(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7705508945598495973428043726016767323017120361328125p-69 {+ 3470252721609741 -69 (2.99943e-021)}
; Y = +zero {+ 0 -1023 (0)}
; 1.7705508945598495973428043726016767323017120361328125p-69 > +zero == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110111010 #b1100010101000010110100101100110000001001110000001101)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
