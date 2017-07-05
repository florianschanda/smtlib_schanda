(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8664462462766291395155349164269864559173583984375p-552 {- 3902126991867992 -552 (-1.26607e-166)}
; Y = 1.07386841141236200058983740746043622493743896484375p-839 {+ 332673750111164 -839 (2.92944e-253)}
; -1.8664462462766291395155349164269864559173583984375p-552 = 1.07386841141236200058983740746043622493743896484375p-839 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111010111 #b1101110111001111011010111101001110000000000001011000)))
(assert (= y (fp #b0 #b00010111000 #b0001001011101001000010100100101100111001001110111100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
