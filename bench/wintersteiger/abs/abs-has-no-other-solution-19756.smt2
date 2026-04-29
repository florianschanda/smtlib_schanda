(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3257397674114173025117224824498407542705535888671875p-102 {- 1467001495133811 -102 (-2.61456e-031)}
; -1.3257397674114173025117224824498407542705535888671875p-102 | == 1.3257397674114173025117224824498407542705535888671875p-102
; [HW: 1.3257397674114173025117224824498407542705535888671875p-102] 

; mpf : + 1467001495133811 -102
; mpfd: + 1467001495133811 -102 (2.61456e-031) class: Pos. norm. non-zero
; hwf : + 1467001495133811 -102 (2.61456e-031) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110011001 #b0101001101100011101011100111000000001001111001110011)))
(assert (= r (fp #b0 #b01110011001 #b0101001101100011101011100111000000001001111001110011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
