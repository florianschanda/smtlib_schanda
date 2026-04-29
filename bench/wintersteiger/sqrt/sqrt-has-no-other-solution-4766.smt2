(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3418760658230401983104229657328687608242034912109375p289 {+ 1539672922647535 289 (1.33469e+087)}
; 1.3418760658230401983104229657328687608242034912109375p289 S == 1.6382161431404831386515752456034533679485321044921875p144
; [HW: 1.6382161431404831386515752456034533679485321044921875p144] 

; mpf : + 2874269984429315 144
; mpfd: + 2874269984429315 144 (3.65334e+043) class: Pos. norm. non-zero
; hwf : + 2874269984429315 144 (3.65334e+043) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100100000 #b0101011110000101001100001001100111111110101111101111)))
(assert (= r (fp #b0 #b10010001111 #b1010001101100010001000100001011010010001010100000011)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
