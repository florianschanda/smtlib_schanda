(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.881355780799384813661845328169874846935272216796875p597 {- 3969273565988942 597 (-9.75839e+179)}
; Y = -1.73682967765210349853077786974608898162841796875p-676 {- 3318385861709536 -676 (-5.53962e-204)}
; -1.881355780799384813661845328169874846935272216796875p597 - -1.73682967765210349853077786974608898162841796875p-676 == -1.8813557807993845916172404031385667622089385986328125p597
; [HW: -1.8813557807993845916172404031385667622089385986328125p597] 

; mpf : - 3969273565988941 597
; mpfd: - 3969273565988941 597 (-9.75839e+179) class: Neg. norm. non-zero
; hwf : - 3969273565988941 597 (-9.75839e+179) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001010100 #b1110000110100000100010000100111010101100100001001110)))
(assert (= y (fp #b1 #b00101011011 #b1011110010100000110111101010100000111100111011100000)))
(assert (= r (fp #b1 #b11001010100 #b1110000110100000100010000100111010101100100001001101)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)
