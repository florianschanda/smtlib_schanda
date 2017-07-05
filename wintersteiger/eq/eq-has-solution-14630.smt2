(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.309978985530721562469125274219550192356109619140625p187 {+ 1396021243728842 187 (2.56965e+056)}
; Y = -1.491537130130186739052078337408602237701416015625p-227 {- 2213686436093072 -227 (-6.91552e-069)}
; 1.309978985530721562469125274219550192356109619140625p187 = -1.491537130130186739052078337408602237701416015625p-227 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010111010 #b0100111101011010110010000110010101001101001111001010)))
(assert (= y (fp #b1 #b01100011100 #b0111110111010101011000001001101010101101110010010000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
