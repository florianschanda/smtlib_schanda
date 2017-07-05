(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.75543064049486563504842706606723368167877197265625p526 {+ 3402157151036932 526 (3.85622e+158)}
; Y = 1.614105158767255687735087121836841106414794921875p-987 {+ 2765683764190512 -987 (1.23403e-297)}
; 1.75543064049486563504842706606723368167877197265625p526 = 1.614105158767255687735087121836841106414794921875p-987 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000001101 #b1100000101100011111001110000011101010010011000000100)))
(assert (= y (fp #b0 #b00000100100 #b1001110100110101111111101110010100110101110100110000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
