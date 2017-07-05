(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.012230467709152481603496198658831417560577392578125p-941 {- 55081129817506 -941 (-5.4457e-284)}
; Y = -1.6877063506531502223850793598103336989879608154296875p361 {- 3097154064541851 361 (-7.9273e+108)}
; -1.012230467709152481603496198658831417560577392578125p-941 = -1.6877063506531502223850793598103336989879608154296875p361 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001010010 #b0000001100100001100010010011001011010011010110100010)))
(assert (= y (fp #b1 #b10101101000 #b1011000000001101100001011111110101001110100010011011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
