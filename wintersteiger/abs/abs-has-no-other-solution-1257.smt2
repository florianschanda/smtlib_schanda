(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9478203520229750989045669484767131507396697998046875p96 {+ 4268603384184843 96 (1.54322e+029)}
; 1.9478203520229750989045669484767131507396697998046875p96 | == 1.9478203520229750989045669484767131507396697998046875p96
; [HW: 1.9478203520229750989045669484767131507396697998046875p96] 

; mpf : + 4268603384184843 96
; mpfd: + 4268603384184843 96 (1.54322e+029) class: Pos. norm. non-zero
; hwf : + 4268603384184843 96 (1.54322e+029) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001011111 #b1111001010100100010110101100011001101100000000001011)))
(assert (= r (fp #b0 #b10001011111 #b1111001010100100010110101100011001101100000000001011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
