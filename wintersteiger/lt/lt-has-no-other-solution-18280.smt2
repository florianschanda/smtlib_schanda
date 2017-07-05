(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0204906959524515652759646400227211415767669677734375p821 {- 92281890656023 821 (-1.42704e+247)}
; Y = 1.822052187397519507072729538776911795139312744140625p653 {+ 3702193924842570 653 (6.81001e+196)}
; -1.0204906959524515652759646400227211415767669677734375p821 < 1.822052187397519507072729538776911795139312744140625p653 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100110100 #b0000010100111110111000001101010011111100111100010111)))
(assert (= y (fp #b0 #b11010001100 #b1101001001110010000000110001110001111010010001001010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
