(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3581328909763714651859345394768752157688140869140625p-861 {+ 1612887154350305 -861 (8.83316e-260)}
; Y = 1.4578488439039343216307997863623313605785369873046875p209 {+ 2061967882797771 209 (1.19945e+063)}
; 1.3581328909763714651859345394768752157688140869140625p-861 > 1.4578488439039343216307997863623313605785369873046875p209 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010100010 #b0101101110101110100110001101111001011101100011100001)))
(assert (= y (fp #b0 #b10011010000 #b0111010100110101100101001111001100010100001011001011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
