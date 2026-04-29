(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8599068172332930970469533349387347698211669921875p2 {- 3872676021665208 2 (-7.43963)}
; Y = -1.073680211493072800266190824913792312145233154296875p-312 {- 331826173024782 -312 (-1.28682e-094)}
; -1.8599068172332930970469533349387347698211669921875p2 = -1.073680211493072800266190824913792312145233154296875p-312 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000000001 #b1101110000100010110110100110100110011111110110111000)))
(assert (= y (fp #b1 #b01011000111 #b0001001011011100101101001101001010111001101000001110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
