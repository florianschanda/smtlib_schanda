(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.025054642101931534625691710971295833587646484375p-855 {+ 112836076834160 -855 (4.26678e-258)}
; Y = -1.412937555174936132829088819562457501888275146484375p-879 {- 1859705419613126 -879 (-3.50555e-265)}
; 1.025054642101931534625691710971295833587646484375p-855 - -1.412937555174936132829088819562457501888275146484375p-879 == 1.0250547263195723957096561207436025142669677734375p-855
; [HW: 1.0250547263195723957096561207436025142669677734375p-855] 

; mpf : + 112836456116696 -855
; mpfd: + 112836456116696 -855 (4.26679e-258) class: Pos. norm. non-zero
; hwf : + 112836456116696 -855 (4.26679e-258) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010101000 #b0000011001101001111110110010010001110000110101110000)))
(assert (= y (fp #b1 #b00010010000 #b0110100110110110010001101000111011000100001111000110)))
(assert (= r (fp #b0 #b00010101000 #b0000011001101001111111001000111000100111000111011000)))
(assert (= (fp.sub roundTowardZero x y) r))
(check-sat)
(exit)
