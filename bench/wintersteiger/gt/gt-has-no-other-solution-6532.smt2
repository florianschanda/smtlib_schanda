(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.906371917399499071876789457746781408786773681640625p325 {- 4081936229459466 325 (-1.30304e+098)}
; Y = 1.2949057993293535684387052242527715861797332763671875p-877 {+ 1328137647969075 -877 (1.28509e-264)}
; -1.906371917399499071876789457746781408786773681640625p325 > 1.2949057993293535684387052242527715861797332763671875p-877 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101000100 #b1110100000000111111111010110111100111110011000001010)))
(assert (= y (fp #b0 #b00010010010 #b0100101101111110111100100100101110000101001100110011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
