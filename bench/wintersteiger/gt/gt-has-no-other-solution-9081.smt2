(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3853818616368507310454560865764506161212921142578125p936 {- 1735605608463069 936 (-8.04721e+281)}
; Y = -1.3299076046075002377477858317433856427669525146484375p909 {- 1485771765177031 909 (-5.75556e+273)}
; -1.3853818616368507310454560865764506161212921142578125p936 > -1.3299076046075002377477858317433856427669525146484375p909 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110100111 #b0110001010101000011000101011110000110011101011011101)))
(assert (= y (fp #b1 #b11110001100 #b0101010001110100110100110010010001111101101011000111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
