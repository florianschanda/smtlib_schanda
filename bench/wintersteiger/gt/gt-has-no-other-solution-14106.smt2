(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7673693602428544036087032509385608136653900146484375p-39 {- 3455924364845255 -39 (-3.21483e-012)}
; Y = -1.3738158348076974224483137732022441923618316650390625p53 {- 1683516854345137 53 (-1.23742e+016)}
; -1.7673693602428544036087032509385608136653900146484375p-39 > -1.3738158348076974224483137732022441923618316650390625p53 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111011000 #b1100010001110010010100011000001000110010000011000111)))
(assert (= y (fp #b1 #b10000110100 #b0101111110110010011001010000000100111001110110110001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
