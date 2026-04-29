(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2822981744271013671010450707399286329746246337890625p-488 {- 1271357953157265 -488 (-1.60454e-147)}
; Y = 1.3977515727383564847485786231118254363536834716796875p592 {+ 1791313834770491 592 (2.26562e+178)}
; -1.2822981744271013671010450707399286329746246337890625p-488 / 1.3977515727383564847485786231118254363536834716796875p592 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000010111 #b0100100001000100101100010111001011100010100010010001)))
(assert (= y (fp #b0 #b11001001111 #b0110010111010011000011000000110011011000000000111011)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
