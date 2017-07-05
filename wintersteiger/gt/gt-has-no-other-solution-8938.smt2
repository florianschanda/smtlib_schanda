(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7267003083343330782639668541378341615200042724609375p-341 {+ 3272767237824527 -341 (3.85468e-103)}
; Y = 1.5078882036612444306200586652266792953014373779296875p526 {+ 2287325124754651 526 (3.31243e+158)}
; 1.7267003083343330782639668541378341615200042724609375p-341 > 1.5078882036612444306200586652266792953014373779296875p526 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010101010 #b1011101000001001000010000000101001001010000000001111)))
(assert (= y (fp #b0 #b11000001101 #b1000001000000100111101100001100010111111110011011011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
