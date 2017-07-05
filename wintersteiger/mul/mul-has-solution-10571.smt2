(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.13447483417036831809809882543049752712249755859375p-870 {- 605620813060380 -870 (-1.44112e-262)}
; Y = -1.691033021127386515303214764571748673915863037109375p278 {- 3112136056450006 278 (-8.21279e+083)}
; -1.13447483417036831809809882543049752712249755859375p-870 * -1.691033021127386515303214764571748673915863037109375p278 == 1.91843440622010863449986572959460318088531494140625p-592
; [HW: 1.91843440622010863449986572959460318088531494140625p-592] 

; mpf : + 4136260849617124 -592
; mpfd: + 4136260849617124 -592 (1.18356e-178) class: Pos. norm. non-zero
; hwf : + 4136260849617124 -592 (1.18356e-178) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010011001 #b0010001001101100111100010101011011100101100100011100)))
(assert (= y (fp #b1 #b10100010101 #b1011000011100111100010100100001000110010101111010110)))
(assert (= r (fp #b0 #b00110101111 #b1110101100011110100001000110101000111100100011100100)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
