(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.181928339882174494590572066954337060451507568359375p1019 {+ 819332403701494 1019 (6.63983e+306)}
; 1.181928339882174494590572066954337060451507568359375p1019 | == 1.181928339882174494590572066954337060451507568359375p1019
; [HW: 1.181928339882174494590572066954337060451507568359375p1019] 

; mpf : + 819332403701494 1019
; mpfd: + 819332403701494 1019 (6.63983e+306) class: Pos. norm. non-zero
; hwf : + 819332403701494 1019 (6.63983e+306) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111111010 #b0010111010010010110110110000111000000010011011110110)))
(assert (= r (fp #b0 #b11111111010 #b0010111010010010110110110000111000000010011011110110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
