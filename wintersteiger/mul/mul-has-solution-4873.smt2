(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.16823596658198169961906387470662593841552734375p-590 {- 757667436408928 -590 (-2.88292e-178)}
; Y = 1.2956044822119194837028999245376326143741607666015625p-764 {+ 1331284235938649 -764 (1.33523e-230)}
; -1.16823596658198169961906387470662593841552734375p-590 * 1.2956044822119194837028999245376326143741607666015625p-764 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110110001 #b0010101100010001100000110010011001111011000001100000)))
(assert (= y (fp #b0 #b00100000011 #b0100101110101100101111000011111110100110101101011001)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
