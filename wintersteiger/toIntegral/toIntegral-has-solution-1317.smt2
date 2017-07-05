(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6527576557289156422569931237376295030117034912109375 443 {- 2939759135103983 443 (-3.75403e+133)}
; -1.6527576557289156422569931237376295030117034912109375 443 I == -1.6527576557289156422569931237376295030117034912109375 443
; [HW: -1.6527576557289156422569931237376295030117034912109375 443] 

; mpf : - 2939759135103983 443
; mpfd: - 2939759135103983 443 (-3.75403e+133) class: Neg. norm. non-zero
; hwf : - 2939759135103983 443 (-3.75403e+133) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110111010 #b1010011100011011001000000010111110010001101111101111)))
(assert (= r (fp #b1 #b10110111010 #b1010011100011011001000000010111110010001101111101111)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
