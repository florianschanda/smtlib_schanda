(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1900728606691000077688613600912503898143768310546875p341 {+ 856012064482603 341 (5.33092e+102)}
; 1.1900728606691000077688613600912503898143768310546875p341 S == 1.5427720898882635314208755517029203474521636962890625p170
; [HW: 1.5427720898882635314208755517029203474521636962890625p170] 

; mpf : + 2444428181767889 170
; mpfd: + 2444428181767889 170 (2.30888e+051) class: Pos. norm. non-zero
; hwf : + 2444428181767889 170 (2.30888e+051) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101010100 #b0011000010101000100111010111000001101110010100101011)))
(assert (= r (fp #b0 #b10010101001 #b1000101011110011000111001001011101000000011011010001)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
