(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.526748797439841265344284693128429353237152099609375p700 {+ 2372265687867926 700 (8.03091e+210)}
; Y = -1.25872646614467154080330146825872361660003662109375p-573 {- 1165200416520028 -573 (-4.0714e-173)}
; 1.526748797439841265344284693128429353237152099609375p700 M -1.25872646614467154080330146825872361660003662109375p-573 == 1.526748797439841265344284693128429353237152099609375p700
; [HW: 1.526748797439841265344284693128429353237152099609375p700] 

; mpf : + 2372265687867926 700
; mpfd: + 2372265687867926 700 (8.03091e+210) class: Pos. norm. non-zero
; hwf : + 2372265687867926 700 (8.03091e+210) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010111011 #b1000011011011001000000100101101000110110001000010110)))
(assert (= y (fp #b1 #b00111000010 #b0100001000111011111001011100111010110011011101011100)))
(assert (= r (fp #b0 #b11010111011 #b1000011011011001000000100101101000110110001000010110)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
