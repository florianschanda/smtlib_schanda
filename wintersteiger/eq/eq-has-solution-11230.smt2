(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.258487345032868187644226054544560611248016357421875p359 {- 1164123510770014 359 (-1.47781e+108)}
; Y = 1.3001930412415507731793695711530745029449462890625p19 {+ 1351949268674664 19 (681676)}
; -1.258487345032868187644226054544560611248016357421875p359 = 1.3001930412415507731793695711530745029449462890625p19 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101100110 #b0100001000101100001110100000010101011000100101011110)))
(assert (= y (fp #b0 #b10000010010 #b0100110011011001011100110111111010011110100001101000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
