(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8312142934485395873167590252705849707126617431640625p-589 {+ 3743456382239873 -589 (9.03799e-178)}
; Y = -1.1578253994517861968915894976817071437835693359375p750 {- 710782410160664 750 (-6.85709e+225)}
; 1.8312142934485395873167590252705849707126617431640625p-589 = -1.1578253994517861968915894976817071437835693359375p750 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110110010 #b1101010011001010011101011011111001010100010010000001)))
(assert (= y (fp #b1 #b11011101101 #b0010100001100111001111101101000100011111101000011000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
