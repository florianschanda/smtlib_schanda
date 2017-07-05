(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8124342690921320109254111230256967246532440185546875p822 {- 3658878671546347 822 (-5.06896e+247)}
; Y = 1.70541979225493900429455607081763446331024169921875p-181 {+ 3176928313539116 -181 (5.56419e-055)}
; -1.8124342690921320109254111230256967246532440185546875p822 = 1.70541979225493900429455607081763446331024169921875p-181 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100110101 #b1100111111111011101100010011011111100110011111101011)))
(assert (= y (fp #b0 #b01101001010 #b1011010010010110011001000011100110101111101000101100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
