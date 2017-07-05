(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7547340329165990180371181850205175578594207763671875p738 {+ 3399019909407027 738 (2.53716e+222)}
; Y = -zero {- 0 -1023 (-0)}
; 1.7547340329165990180371181850205175578594207763671875p738 M -zero == 1.7547340329165990180371181850205175578594207763671875p738
; [HW: 1.7547340329165990180371181850205175578594207763671875p738] 

; mpf : + 3399019909407027 738
; mpfd: + 3399019909407027 738 (2.53716e+222) class: Pos. norm. non-zero
; hwf : + 3399019909407027 738 (2.53716e+222) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011100001 #b1100000100110110001111111110010010001110000100110011)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b11011100001 #b1100000100110110001111111110010010001110000100110011)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
