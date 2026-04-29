(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.93817855553100759635754002374596893787384033203125p-670 {+ 4225180593096436 -670 (3.95637e-202)}
; Y = 1.00128458431516964566299066063947975635528564453125p957 {+ 5785253443124 957 (1.21973e+288)}
; 1.93817855553100759635754002374596893787384033203125p-670 / 1.00128458431516964566299066063947975635528564453125p957 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101100001 #b1111000000101100011110000100010111010000011011110100)))
(assert (= y (fp #b0 #b11110111100 #b0000000001010100001011111011111110011111011000110100)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
