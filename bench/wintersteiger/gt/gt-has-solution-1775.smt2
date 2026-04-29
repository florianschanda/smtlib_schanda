(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1624153384299626967646190678351558744907379150390625p-902 {- 731453657632433 -902 (-3.438e-272)}
; Y = 1.40050873222370331205866023083217442035675048828125p-639 {+ 1803730977201300 -639 (6.1393e-193)}
; -1.1624153384299626967646190678351558744907379150390625p-902 > 1.40050873222370331205866023083217442035675048828125p-639 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001111001 #b0010100110010100000011010011011011101100111010110001)))
(assert (= y (fp #b0 #b00110000000 #b0110011010000111101111011000001010101001110010010100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
