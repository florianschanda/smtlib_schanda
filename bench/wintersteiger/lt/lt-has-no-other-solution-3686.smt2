(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6547087568261762413612814270891249179840087890625p-561 {- 2948546113278568 -561 (-2.19227e-169)}
; Y = 1.9686034647336774217052379754022695124149322509765625p210 {+ 4362202202844361 210 (3.23935e+063)}
; -1.6547087568261762413612814270891249179840087890625p-561 < 1.9686034647336774217052379754022695124149322509765625p210 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111001110 #b1010011110011010111111100011101011111001001001101000)))
(assert (= y (fp #b0 #b10011010001 #b1111011111110110011001011000101111010010110011001001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
