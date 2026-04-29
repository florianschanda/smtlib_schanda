(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2685869811292211917219674432999454438686370849609375p153 {- 1209608228130127 153 (-1.44847e+046)}
; Y = -zero {- 0 -1023 (-0)}
; -1.2685869811292211917219674432999454438686370849609375p153 m -zero == -1.2685869811292211917219674432999454438686370849609375p153
; [HW: -1.2685869811292211917219674432999454438686370849609375p153] 

; mpf : - 1209608228130127 153
; mpfd: - 1209608228130127 153 (-1.44847e+046) class: Neg. norm. non-zero
; hwf : - 1209608228130127 153 (-1.44847e+046) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010011000 #b0100010011000010000111011100110000010100110101001111)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b1 #b10010011000 #b0100010011000010000111011100110000010100110101001111)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
