(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.730832219635786817235612033982761204242706298828125p-519 {- 3291375712022082 -519 (-1.00853e-156)}
; Y = -1.34133994305272619129709710250608623027801513671875p-456 {- 1537258440338924 -456 (-7.20876e-138)}
; -1.730832219635786817235612033982761204242706298828125p-519 = -1.34133994305272619129709710250608623027801513671875p-456 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111111000 #b1011101100010111110100100000001000110010111001000010)))
(assert (= y (fp #b1 #b01000110111 #b0101011101100010000011011111010000111010110111101100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
