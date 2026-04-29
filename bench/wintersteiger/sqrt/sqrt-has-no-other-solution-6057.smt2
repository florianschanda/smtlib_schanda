(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4422800230979315738721879824879579246044158935546875p325 {+ 1991852147217259 325 (9.85821e+097)}
; 1.4422800230979315738721879824879579246044158935546875p325 S == 1.6983992599491626318553016972145996987819671630859375p162
; [HW: 1.6983992599491626318553016972145996987819671630859375p162] 

; mpf : + 3145310646862879 162
; mpfd: + 3145310646862879 162 (9.92885e+048) class: Pos. norm. non-zero
; hwf : + 3145310646862879 162 (9.92885e+048) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101000100 #b0111000100111001010000110111101011100001001101101011)))
(assert (= r (fp #b0 #b10010100001 #b1011001011001010010010110011110100001000010000011111)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
