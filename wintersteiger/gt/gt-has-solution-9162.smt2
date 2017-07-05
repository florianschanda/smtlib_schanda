(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8516758772391188614392376621253788471221923828125p-867 {+ 3835607163374536 -867 (1.88174e-261)}
; Y = -zero {- 0 -1023 (-0)}
; 1.8516758772391188614392376621253788471221923828125p-867 > -zero == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010011100 #b1101101000000111011011100010011110001000101111001000)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
