(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6164065879928539715137958410196006298065185546875p-366 {- 2776048479993336 -366 (-1.07541e-110)}
; Y = -1.9617803381361422765394308953545987606048583984375p590 {- 4331473572442200 590 (-7.94965e+177)}
; -1.6164065879928539715137958410196006298065185546875p-366 % -1.9617803381361422765394308953545987606048583984375p590 == -1.6164065879928539715137958410196006298065185546875p-366
; [HW: -1.6164065879928539715137958410196006298065185546875p-366] 

; mpf : - 2776048479993336 -366
; mpfd: - 2776048479993336 -366 (-1.07541e-110) class: Neg. norm. non-zero
; hwf : - 2776048479993336 -366 (-1.07541e-110) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010010001 #b1001110111001100110100100111100001110111110111111000)))
(assert (= y (fp #b1 #b11001001101 #b1111011000110111001111000111101000111011000001011000)))
(assert (= r (fp #b1 #b01010010001 #x9dccd27877df8)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
