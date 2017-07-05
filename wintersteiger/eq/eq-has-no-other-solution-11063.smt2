(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.47241841042642018777542034513317048549652099609375p569 {- 2127583377159388 569 (-2.84511e+171)}
; Y = 1.8147222520138435175596214321558363735675811767578125p-872 {+ 3669182830579997 -872 (5.76307e-263)}
; -1.47241841042642018777542034513317048549652099609375p569 = 1.8147222520138435175596214321558363735675811767578125p-872 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000111000 #b0111100011110000011010011011011011001111010011011100)))
(assert (= y (fp #b0 #b00010010111 #b1101000010010001101000110011001110111001000100011101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
