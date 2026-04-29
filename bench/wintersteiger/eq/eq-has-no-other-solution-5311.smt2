(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1100159791865011893463588421582244336605072021484375p-607 {+ 495467922869127 -607 (2.08988e-183)}
; Y = -1.8105598595885936674676486290991306304931640625p397 {- 3650437081604672 397 (-5.84415e+119)}
; 1.1100159791865011893463588421582244336605072021484375p-607 = -1.8105598595885936674676486290991306304931640625p397 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110100000 #b0001110000101010000000011101100010100100101110000111)))
(assert (= y (fp #b1 #b10110001100 #b1100111110000000110110011101100001100010001001000000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
