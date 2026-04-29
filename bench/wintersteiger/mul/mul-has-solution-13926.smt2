(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.532637896858139558986522388295270502567291259765625p823 {- 2398787833813722 823 (-8.57287e+247)}
; Y = 1.4547243925008184195490912316017784178256988525390625p621 {+ 2047896604622961 621 (1.26593e+187)}
; -1.532637896858139558986522388295270502567291259765625p823 * 1.4547243925008184195490912316017784178256988525390625p621 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100110110 #b1000100001011010111101010000101110011101101011011010)))
(assert (= y (fp #b0 #b11001101100 #b0111010001101000110100010101101001111100000001110001)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
