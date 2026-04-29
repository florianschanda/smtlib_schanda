(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.932222010364408770755062505486421287059783935546875p-783 {- 4198354698503726 -783 (-3.79814e-236)}
; Y = -1.45624389978187540606313632451929152011871337890625p505 {- 2054739857047716 505 (-1.52539e+152)}
; -1.932222010364408770755062505486421287059783935546875p-783 > -1.45624389978187540606313632451929152011871337890625p505 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011110000 #b1110111010100110000110100000011100100000011000101110)))
(assert (= y (fp #b1 #b10111111000 #b0111010011001100011001100111010010010000000010100100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
