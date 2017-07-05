(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9312962659805126275358588827657513320446014404296875p-152 {+ 4194185516441371 -152 (3.3829e-046)}
; Y = 1.339108736228488805153347129817120730876922607421875p-666 {+ 1527209978116702 -666 (4.3736e-201)}
; 1.9312962659805126275358588827657513320446014404296875p-152 = 1.339108736228488805153347129817120730876922607421875p-666 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101100111 #b1110111001101001011011101001110101000101111100011011)))
(assert (= y (fp #b0 #b00101100101 #b0101011011001111110101001000001111100011101001011110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
