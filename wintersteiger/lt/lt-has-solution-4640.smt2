(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.49108719572023940003191455616615712642669677734375p-758 {- 2211660111652092 -758 (-9.83482e-229)}
; Y = -1.924481763305764037141898370464332401752471923828125p894 {- 4163495724734658 894 (-2.54173e+269)}
; -1.49108719572023940003191455616615712642669677734375p-758 < -1.924481763305764037141898370464332401752471923828125p894 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100001001 #b0111110110110111111000111111010100011010010011111100)))
(assert (= y (fp #b1 #b11101111101 #b1110110010101010110101100011101100100101100011000010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
