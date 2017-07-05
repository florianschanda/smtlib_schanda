(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.886189556006843570656883457559160888195037841796875p-543 {- 3991042954212046 -543 (-6.55085e-164)}
; Y = 1.777697117833908269091125475824810564517974853515625p-513 {+ 3502436450083898 -513 (6.62934e-155)}
; -1.886189556006843570656883457559160888195037841796875p-543 > 1.777697117833908269091125475824810564517974853515625p-513 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111100000 #b1110001011011101010100011001100100011011001011001110)))
(assert (= y (fp #b0 #b00111111110 #b1100011100010111001010001000011101001010010000111010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
