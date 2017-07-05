(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4835593108187747901638431358151137828826904296875p-92 {- 2177757532014968 -92 (-2.99602e-028)}
; Y = -1.80459062236818379432179426657967269420623779296875p-821 {- 3623554027083148 -821 (-1.29048e-247)}
; -1.4835593108187747901638431358151137828826904296875p-92 < -1.80459062236818379432179426657967269420623779296875p-821 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110100011 #b0111101111001010100010110000000110100100100101111000)))
(assert (= y (fp #b1 #b00011001010 #b1100110111111001101001101010100110111101010110001100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
