(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = -1.047086268782009721434178572962991893291473388671875p-262 {- 212057702540926 -262 (-1.41294e-079)}
; -zero = -1.047086268782009721434178572962991893291473388671875p-262 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b01011111001 #b0000110000001101110110001000000010000010011001111110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
