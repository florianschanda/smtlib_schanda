(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2639940847656772060503271859488449990749359130859375p654 {- 1188923661778719 654 (-9.44849e+196)}
; Y = -1.76610867533462556622225747560150921344757080078125p204 {- 3450246744762324 204 (-4.54084e+061)}
; -1.2639940847656772060503271859488449990749359130859375p654 > -1.76610867533462556622225747560150921344757080078125p204 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010001101 #b0100001110010101000111011100100001100111111100011111)))
(assert (= y (fp #b1 #b10011001011 #b1100010000011111101100101011100110111110011111010100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
