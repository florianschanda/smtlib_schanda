(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7508365084991044380302582794683985412120819091796875p1000 {+ 3381467019892731 1000 (1.87604e+301)}
; 1.7508365084991044380302582794683985412120819091796875p1000 S == 1.323191788252596534647409498575143516063690185546875p500
; [HW: 1.323191788252596534647409498575143516063690185546875p500] 

; mpf : + 1455526417143598 500
; mpfd: + 1455526417143598 500 (4.33132e+150) class: Pos. norm. non-zero
; hwf : + 1455526417143598 500 (4.33132e+150) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111100111 #b1100000000110110110100100100100010100101011111111011)))
(assert (= r (fp #b0 #b10111110011 #b0101001010111100101100100111000011100001011100101110)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
