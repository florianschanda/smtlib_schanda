(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.993006678167180023564242219435982406139373779296875p648 {+ 4472104505770126 648 (2.3278e+195)}
; Y = -1.602657904521531673225354097667150199413299560546875p-790 {- 2714129914235054 -790 (-2.46118e-238)}
; 1.993006678167180023564242219435982406139373779296875p648 = -1.602657904521531673225354097667150199413299560546875p-790 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010000111 #b1111111000110101101011111000011101110000000010001110)))
(assert (= y (fp #b1 #b00011101001 #b1001101001000111110010011101011010011000100010101110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
