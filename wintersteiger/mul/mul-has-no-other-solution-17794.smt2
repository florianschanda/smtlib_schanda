(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7613233205195519825991823381627909839153289794921875p-850 {- 3428695422600323 -850 (-2.34608e-256)}
; Y = -1.11039389861394344194422956206835806369781494140625p-727 {- 497169920661732 -727 (-1.57279e-219)}
; -1.7613233205195519825991823381627909839153289794921875p-850 * -1.11039389861394344194422956206835806369781494140625p-727 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010101101 #b1100001011100110000101011100101101010000010010000011)))
(assert (= y (fp #b1 #b00100101000 #b0001110001000010110001100100100000111001100011100100)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
