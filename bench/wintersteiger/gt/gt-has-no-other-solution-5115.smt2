(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.17859051101322620525024831295013427734375p369 {- 804300158851072 369 (-1.4172e+111)}
; Y = -1.7616424202382796604382519944920204579830169677734375p-755 {- 3430132519974679 -755 (-9.29546e-228)}
; -1.17859051101322620525024831295013427734375p369 > -1.7616424202382796604382519944920204579830169677734375p-755 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101110000 #b0010110110111000000110111001010000101101100000000000)))
(assert (= y (fp #b1 #b00100001100 #b1100001011111010111111110110011000101011011100010111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
