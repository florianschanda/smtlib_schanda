(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 0.940596470153162389493672890239395201206207275390625p-1022 {+ 4236069912487786 -1023 (2.0929e-308)}
; Y = -1.1662090193979801622248260173364542424678802490234375p-367 {- 748538877826359 -367 (-3.87943e-111)}
; 0.940596470153162389493672890239395201206207275390625p-1022 = -1.1662090193979801622248260173364542424678802490234375p-367 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b1111000011001010111011100010011000001010011101101010)))
(assert (= y (fp #b1 #b01010010000 #b0010101010001100101011001001111010011101010100110111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
