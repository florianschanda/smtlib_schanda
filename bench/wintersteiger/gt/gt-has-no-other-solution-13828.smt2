(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.89901905491787470481312993797473609447479248046875p-199 {+ 4048821880727116 -199 (2.36352e-060)}
; Y = -1.3176790152071742312500646221451461315155029296875p-610 {- 1430699094510456 -610 (-3.10108e-184)}
; 1.89901905491787470481312993797473609447479248046875p-199 > -1.3176790152071742312500646221451461315155029296875p-610 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100111000 #b1110011000100110000111001101111101011010011001001100)))
(assert (= y (fp #b1 #b00110011101 #b0101000101010011011010010111010011110000101101111000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
