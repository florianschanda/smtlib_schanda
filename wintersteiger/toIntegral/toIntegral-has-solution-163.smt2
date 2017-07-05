(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1896362427089453017714504312607459723949432373046875 648 {+ 854045711999947 648 (1.38948e+195)}
; 1.1896362427089453017714504312607459723949432373046875 648 I == 1.1896362427089453017714504312607459723949432373046875 648
; [HW: 1.1896362427089453017714504312607459723949432373046875 648] 

; mpf : + 854045711999947 648
; mpfd: + 854045711999947 648 (1.38948e+195) class: Pos. norm. non-zero
; hwf : + 854045711999947 648 (1.38948e+195) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010000111 #b0011000010001100000000000011010010010010001111001011)))
(assert (= r (fp #b0 #b11010000111 #b0011000010001100000000000011010010010010001111001011)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
