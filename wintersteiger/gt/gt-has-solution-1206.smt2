(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.91804668997795690899010878638364374637603759765625p-747 {+ 4134514730893444 -747 (2.59091e-225)}
; Y = -1.8486250490618394426434178967610932886600494384765625p317 {- 3821867454732169 317 (-4.9358e+095)}
; 1.91804668997795690899010878638364374637603759765625p-747 > -1.8486250490618394426434178967610932886600494384765625p317 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100010100 #b1110101100000101000110111001110110101000000010000100)))
(assert (= y (fp #b1 #b10100111100 #b1101100100111111011111011100000001001001011110001001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
