(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.247824103529846961890825696173124015331268310546875p-943 {- 1116100540310446 -943 (-1.67829e-284)}
; Y = 1.2650725273169005635764960970846004784107208251953125p388 {+ 1193780535250549 388 (7.97542e+116)}
; -1.247824103529846961890825696173124015331268310546875p-943 > 1.2650725273169005635764960970846004784107208251953125p388 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001010000 #b0011111101110001011001101000001111010010001110101110)))
(assert (= y (fp #b0 #b10110000011 #b0100001111011011110010110000101111100100111001110101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
