(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.208111773343741202069168139132671058177947998046875p1017 {- 937252104882286 1017 (-1.69673e+306)}
; Y = 1.6048958350659088267775587155483663082122802734375p745 {+ 2724208657400792 745 (2.97025e+224)}
; -1.208111773343741202069168139132671058177947998046875p1017 % 1.6048958350659088267775587155483663082122802734375p745 == -1.065835832132332683386266580782830715179443359375p744
; [HW: -1.065835832132332683386266580782830715179443359375p744] 

; mpf : - 296498229058800 744
; mpfd: - 296498229058800 744 (-9.86296e+223) class: Neg. norm. non-zero
; hwf : - 296498229058800 744 (-9.86296e+223) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111111000 #b0011010101000110110100000010110001101100100001101110)))
(assert (= y (fp #b0 #b11011101000 #b1001101011011010011101000001010100011000001111011000)))
(assert (= r (fp #b1 #b11011100111 #x10da9df9e9cf0)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
