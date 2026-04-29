(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5581844717245101339386792460572905838489532470703125p-237 {+ 2513839378862501 -237 (7.05521e-072)}
; 1.5581844717245101339386792460572905838489532470703125p-237 S == 1.765324033555601968004111768095754086971282958984375p-119
; [HW: 1.765324033555601968004111768095754086971282958984375p-119] 

; mpf : + 3446713032338694 -119
; mpfd: + 3446713032338694 -119 (2.65616e-036) class: Pos. norm. non-zero
; hwf : + 3446713032338694 -119 (2.65616e-036) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100010010 #b1000111011100101001011010111001100110001000110100101)))
(assert (= r (fp #b0 #b01110001000 #b1100001111101100010001101001111011110110110100000110)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
