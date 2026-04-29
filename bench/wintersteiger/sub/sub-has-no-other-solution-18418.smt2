(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1425800748346481849893052640254609286785125732421875p-824 {- 642123571895779 -824 (-1.02134e-248)}
; Y = -zero {- 0 -1023 (-0)}
; -1.1425800748346481849893052640254609286785125732421875p-824 - -zero == -1.1425800748346481849893052640254609286785125732421875p-824
; [HW: -1.1425800748346481849893052640254609286785125732421875p-824] 

; mpf : - 642123571895779 -824
; mpfd: - 642123571895779 -824 (-1.02134e-248) class: Neg. norm. non-zero
; hwf : - 642123571895779 -824 (-1.02134e-248) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011000111 #b0010010010000000001000001011011001111001110111100011)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b1 #b00011000111 #b0010010010000000001000001011011001111001110111100011)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
