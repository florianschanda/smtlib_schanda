(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.49122344535474748994374749599955976009368896484375p-61 {- 2212273725455292 -61 (-6.46715e-019)}
; Y = 1.359118779542141108862551845959387719631195068359375p-61 {+ 1617327201727734 -61 (5.89424e-019)}
; -1.49122344535474748994374749599955976009368896484375p-61 = 1.359118779542141108862551845959387719631195068359375p-61 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111000010 #b0111110111000000110100011101100011010011101110111100)))
(assert (= y (fp #b0 #b01111000010 #b0101101111101111001101010101010110000011010011110110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
