(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1010770543128181042646929199690930545330047607421875p-618 {- 455210584138915 -618 (-1.01223e-186)}
; Y = -1.98452673905457555036946359905414283275604248046875p943 {- 4433914255142476 943 (-1.47551e+284)}
; -1.1010770543128181042646929199690930545330047607421875p-618 < -1.98452673905457555036946359905414283275604248046875p943 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110010101 #b0001100111100000001011111001001010100110010010100011)))
(assert (= y (fp #b1 #b11110101110 #b1111110000001001111100011100001001000110111001001100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
