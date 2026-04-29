(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.659512654185538504947317051119171082973480224609375p-107 {- 2970180943636118 -107 (-1.02275e-032)}
; Y = -1.97333188288300309665146414772607386112213134765625p-378 {- 4383497105059716 -378 (-3.20525e-114)}
; -1.659512654185538504947317051119171082973480224609375p-107 = -1.97333188288300309665146414772607386112213134765625p-378 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110010100 #b1010100011010101110100100100000100000110011010010110)))
(assert (= y (fp #b1 #b01010000101 #b1111100100101100010001110011110100100010111110000100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
