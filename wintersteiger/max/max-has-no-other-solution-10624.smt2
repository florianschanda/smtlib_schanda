(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.44668732729140714354798546992242336273193359375p-698 {+ 2011700880740704 -698 (1.10011e-210)}
; Y = -1.58488132293827987950862734578549861907958984375p279 {- 2634071308040800 279 (-1.53945e+084)}
; 1.44668732729140714354798546992242336273193359375p-698 M -1.58488132293827987950862734578549861907958984375p279 == 1.44668732729140714354798546992242336273193359375p-698
; [HW: 1.44668732729140714354798546992242336273193359375p-698] 

; mpf : + 2011700880740704 -698
; mpfd: + 2011700880740704 -698 (1.10011e-210) class: Pos. norm. non-zero
; hwf : + 2011700880740704 -698 (1.10011e-210) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101000101 #b0111001001011010000110011100011001000001000101100000)))
(assert (= y (fp #b1 #b10100010110 #b1001010110111010110010000100101000001111101001100000)))
(assert (= r (fp #b0 #b00101000101 #b0111001001011010000110011100011001000001000101100000)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
