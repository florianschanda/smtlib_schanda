(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2757269157957564775784931043745018541812896728515625p-920 {+ 1241763635233785 -920 (1.43933e-277)}
; Y = 1.50522396987906770249310284270904958248138427734375p18 {+ 2275326482486012 18 (394585)}
; 1.2757269157957564775784931043745018541812896728515625p-920 = 1.50522396987906770249310284270904958248138427734375p18 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001100111 #b0100011010010110000010100000010111111000001111111001)))
(assert (= y (fp #b0 #b10000010001 #b1000000101010110010110111010101111001001001011111100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
