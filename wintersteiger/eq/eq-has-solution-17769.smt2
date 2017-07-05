(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.87002712192298758964170701801776885986328125p-157 {+ 3918253822094592 -157 (1.02362e-047)}
; Y = 1.7242209948557991605611050545121543109416961669921875p285 {+ 3261601402566467 285 (1.07187e+086)}
; 1.87002712192298758964170701801776885986328125p-157 = 1.7242209948557991605611050545121543109416961669921875p285 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101100010 #b1101111010111010000110001111001101001010110100000000)))
(assert (= y (fp #b0 #b10100011100 #b1011100101100110100011000000111111111011011101000011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
