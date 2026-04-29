(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.55933555909311305498476940556429326534271240234375p-48 {+ 2519023415506812 -48 (5.53987e-015)}
; Y = -1.3670140117389164569061676957062445580959320068359375p210 {- 1652884166507135 210 (-2.24943e+063)}
; 1.55933555909311305498476940556429326534271240234375p-48 < -1.3670140117389164569061676957062445580959320068359375p210 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111001111 #b1000111100110000100111010111110111001011011101111100)))
(assert (= y (fp #b1 #b10011010001 #b0101110111110100101000010101100110010111101001111111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
