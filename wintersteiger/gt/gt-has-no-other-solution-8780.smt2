(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.55799662101557689908304382697679102420806884765625p-991 {+ 2512993374479748 -991 (7.44459e-299)}
; Y = 1.5410465894436000677814035952906124293804168701171875p962 {+ 2436657218608275 962 (6.00719e+289)}
; 1.55799662101557689908304382697679102420806884765625p-991 > 1.5410465894436000677814035952906124293804168701171875p962 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000100000 #b1000111011011000110111011101011010001010010110000100)))
(assert (= y (fp #b0 #b11111000001 #b1000101010000010000001110111111101000101110010010011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
