(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.697645150782536749289874933310784399509429931640625p-856 {- 3141914441101066 -856 (-3.53322e-258)}
; Y = -1.327017658768308905337107717059552669525146484375p-926 {- 1472756606172528 -926 (-2.33938e-279)}
; -1.697645150782536749289874933310784399509429931640625p-856 < -1.327017658768308905337107717059552669525146484375p-926 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010100111 #b1011001010011000110111110110001011010010111100001010)))
(assert (= y (fp #b1 #b00001100001 #b0101001110110111011011011110010110011111110101110000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
