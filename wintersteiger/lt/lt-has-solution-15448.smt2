(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.16611317296534711118738414370454847812652587890625p932 {+ 748107223868068 932 (4.23347e+280)}
; Y = -1.5035243605186463522471740361652337014675140380859375p13 {- 2267672122403743 13 (-12316.9)}
; 1.16611317296534711118738414370454847812652587890625p932 < -1.5035243605186463522471740361652337014675140380859375p13 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110100011 #b0010101010000110011001001001010101010010001010100100)))
(assert (= y (fp #b1 #b10000001100 #b1000000011100110111110001111010100101010101110011111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
