(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9112706956945675340620027782279066741466522216796875p-222 {- 4103998365563707 -222 (-2.83572e-067)}
; Y = -1.1978293317300321429996756705804727971553802490234375p-209 {- 890944104662327 -209 (-1.45588e-063)}
; -1.9112706956945675340620027782279066741466522216796875p-222 < -1.1978293317300321429996756705804727971553802490234375p-209 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100100001 #b1110100101001001000010010100101111001111101100111011)))
(assert (= y (fp #b1 #b01100101110 #b0011001010100100111100010110110111111000010100110111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
