(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.064894860133689835635095732868649065494537353515625p562 {- 292260467916346 562 (-1.60755e+169)}
; Y = -1.3736923691730582586245645870803855359554290771484375p-481 {- 1682960814558983 -481 (-2.2002e-145)}
; -1.064894860133689835635095732868649065494537353515625p562 M -1.3736923691730582586245645870803855359554290771484375p-481 == -1.3736923691730582586245645870803855359554290771484375p-481
; [HW: -1.3736923691730582586245645870803855359554290771484375p-481] 

; mpf : - 1682960814558983 -481
; mpfd: - 1682960814558983 -481 (-2.2002e-145) class: Neg. norm. non-zero
; hwf : - 1682960814558983 -481 (-2.2002e-145) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000110001 #b0001000010011100111100110001010111110011111000111010)))
(assert (= y (fp #b1 #b01000011110 #b0101111110101010010011011001100001011100111100000111)))
(assert (= r (fp #b1 #b01000011110 #b0101111110101010010011011001100001011100111100000111)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
