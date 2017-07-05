(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.73420225607552680457956739701330661773681640625p-632 {- 3306553006876320 -632 (-9.73066e-191)}
; Y = -1.84878641857404435455691782408393919467926025390625p339 {- 3822594198407204 339 (-2.0704e+102)}
; -1.73420225607552680457956739701330661773681640625p-632 % -1.84878641857404435455691782408393919467926025390625p339 == -1.73420225607552680457956739701330661773681640625p-632
; [HW: -1.73420225607552680457956739701330661773681640625p-632] 

; mpf : - 3306553006876320 -632
; mpfd: - 3306553006876320 -632 (-9.73066e-191) class: Neg. norm. non-zero
; hwf : - 3306553006876320 -632 (-9.73066e-191) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110000111 #b1011101111110100101011011101011001111110011010100000)))
(assert (= y (fp #b1 #b10101010010 #b1101100101001010000100010001010100010000100000100100)))
(assert (= r (fp #b1 #b00110000111 #xbbf4add67e6a0)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
