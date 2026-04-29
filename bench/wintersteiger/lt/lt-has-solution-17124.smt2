(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.812606787007612130224742941209115087985992431640625p-647 {+ 3659655623166218 -647 (3.10382e-195)}
; Y = -1.43006852616642898823329232982359826564788818359375p-236 {- 1936856454186908 -236 (-1.29502e-071)}
; 1.812606787007612130224742941209115087985992431640625p-647 < -1.43006852616642898823329232982359826564788818359375p-236 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101111000 #b1101000000000110111111111001011010110100100100001010)))
(assert (= y (fp #b1 #b01100010011 #b0110111000011000111110001000111011101100011110011100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
