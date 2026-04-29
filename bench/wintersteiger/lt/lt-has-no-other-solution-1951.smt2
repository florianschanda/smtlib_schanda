(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.523240880771588923181525387917645275592803955078125p-231 {- 2356467435667938 -231 (-4.41407e-070)}
; Y = 1.0833473482870188409066258827806450426578521728515625p217 {+ 375363086687737 217 (2.2818e+065)}
; -1.523240880771588923181525387917645275592803955078125p-231 < 1.0833473482870188409066258827806450426578521728515625p217 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100011000 #b1000010111110011000111010100011011011000000111100010)))
(assert (= y (fp #b0 #b10011011000 #b0001010101010110010000000111011100011001110111111001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
