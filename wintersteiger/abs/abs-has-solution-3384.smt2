(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6776610593046348274270940237329341471195220947265625p-582 {- 3051914094167849 -582 (-1.05986e-175)}
; -1.6776610593046348274270940237329341471195220947265625p-582 | == 1.6776610593046348274270940237329341471195220947265625p-582
; [HW: 1.6776610593046348274270940237329341471195220947265625p-582] 

; mpf : + 3051914094167849 -582
; mpfd: + 3051914094167849 -582 (1.05986e-175) class: Pos. norm. non-zero
; hwf : + 3051914094167849 -582 (1.05986e-175) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110111001 #b1010110101111011001100011111011101111100011100101001)))
(assert (= r (fp #b0 #b00110111001 #b1010110101111011001100011111011101111100011100101001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
