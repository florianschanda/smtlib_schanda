(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.22502289220711180206535573233850300312042236328125p856 {+ 1013413013493780 856 (5.886e+257)}
; 1.22502289220711180206535573233850300312042236328125p856 S == 1.1068075226556384205167660184088163077831268310546875p428
; [HW: 1.1068075226556384205167660184088163077831268310546875p428] 

; mpf : + 481018319232299 428
; mpfd: + 481018319232299 428 (7.67203e+128) class: Pos. norm. non-zero
; hwf : + 481018319232299 428 (7.67203e+128) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101010111 #b0011100110011011000110011010101011100001100000010100)))
(assert (= r (fp #b0 #b10110101011 #b0001101101010111101111001110000011000101110100101011)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
