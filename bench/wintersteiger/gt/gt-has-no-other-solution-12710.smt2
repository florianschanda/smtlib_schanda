(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6596144841970945638109924402670003473758697509765625p908 {+ 2970639545238217 908 (3.59123e+273)}
; Y = 1.2687217856411876493183399361441843211650848388671875p561 {+ 1210215333679987 561 (9.57622e+168)}
; 1.6596144841970945638109924402670003473758697509765625p908 > 1.2687217856411876493183399361441843211650848388671875p561 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110001011 #b1010100011011100011111101010110110011000001011001001)))
(assert (= y (fp #b0 #b11000110000 #b0100010011001010111100110111000100001101001101110011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
