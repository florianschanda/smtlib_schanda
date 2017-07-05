(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.53015412053017652027619988075457513332366943359375p229 {+ 2387601899668636 229 (1.32009e+069)}
; 1.53015412053017652027619988075457513332366943359375p229 | == 1.53015412053017652027619988075457513332366943359375p229
; [HW: 1.53015412053017652027619988075457513332366943359375p229] 

; mpf : + 2387601899668636 229
; mpfd: + 2387601899668636 229 (1.32009e+069) class: Pos. norm. non-zero
; hwf : + 2387601899668636 229 (1.32009e+069) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011100100 #b1000011110111000001011100011000110000100010010011100)))
(assert (= r (fp #b0 #b10011100100 #b1000011110111000001011100011000110000100010010011100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
