(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.575722569810583006955084783839993178844451904296875p-541 {+ 2592823950867726 -541 (2.18903e-163)}
; Y = -1.1481674339294303255343265846022404730319976806640625p-233 {- 667286800233025 -233 (-8.31795e-071)}
; 1.575722569810583006955084783839993178844451904296875p-541 - -1.1481674339294303255343265846022404730319976806640625p-233 == 1.1481674339294303255343265846022404730319976806640625p-233
; [HW: 1.1481674339294303255343265846022404730319976806640625p-233] 

; mpf : + 667286800233025 -233
; mpfd: + 667286800233025 -233 (8.31795e-071) class: Pos. norm. non-zero
; hwf : + 667286800233025 -233 (8.31795e-071) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111100010 #b1001001101100010100011011110100011100111110100001110)))
(assert (= y (fp #b1 #b01100010110 #b0010010111101110010011010000101100001111001001000001)))
(assert (= r (fp #b0 #b01100010110 #b0010010111101110010011010000101100001111001001000001)))
(assert (= (fp.sub roundTowardNegative x y) r))
(check-sat)
(exit)
