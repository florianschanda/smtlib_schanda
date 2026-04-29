(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.477520422649284181915163571829907596111297607421875p-290 {+ 2150560797505118 -290 (7.42736e-088)}
; 1.477520422649284181915163571829907596111297607421875p-290 S == 1.2155329788406745716855539285461418330669403076171875p-145
; [HW: 1.2155329788406745716855539285461418330669403076171875p-145] 

; mpf : + 970674243192915 -145
; mpfd: + 970674243192915 -145 (2.72532e-044) class: Pos. norm. non-zero
; hwf : + 970674243192915 -145 (2.72532e-044) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011011101 #b0111101000111110110001110100011001110011011001011110)))
(assert (= r (fp #b0 #b01101101110 #b0011011100101101001010110101011101010100100001010011)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
