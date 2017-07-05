(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6612810479071813407614399693557061254978179931640625p-414 {+ 2978145080941953 -414 (3.92667e-125)}
; Y = 1.5413873114366090089077943048323504626750946044921875p-134 {+ 2438191694049027 -134 (7.0777e-041)}
; 1.6612810479071813407614399693557061254978179931640625p-414 < 1.5413873114366090089077943048323504626750946044921875p-134 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001100001 #b1010100101001001101101101111101000111001110110000001)))
(assert (= y (fp #b0 #b01101111001 #b1000101010011000010110111101110100010110111100000011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
