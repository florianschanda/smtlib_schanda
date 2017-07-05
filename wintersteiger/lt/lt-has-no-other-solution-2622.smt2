(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3230669703580157925415505815180949866771697998046875p-674 {- 1454964287320075 -674 (-1.68797e-203)}
; Y = -1.3911745012313005975812529868562705814838409423828125p-806 {- 1761693337982125 -806 (-3.25991e-243)}
; -1.3230669703580157925415505815180949866771697998046875p-674 < -1.3911745012313005975812529868562705814838409423828125p-806 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101011101 #b0101001010110100100001000101100000011011000000001011)))
(assert (= y (fp #b1 #b00011011001 #b0110010000100100000000110001100111010001010010101101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
