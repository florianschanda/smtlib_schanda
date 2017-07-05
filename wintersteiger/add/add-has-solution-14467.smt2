(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4149708803843659143950617362861521542072296142578125p377 {+ 1868862702268637 377 (4.35568e+113)}
; Y = -1.6321805821444019812815895420499145984649658203125p-537 {- 2847088234176392 -537 (-3.62794e-162)}
; 1.4149708803843659143950617362861521542072296142578125p377 + -1.6321805821444019812815895420499145984649658203125p-537 == 1.41497088038436569235045681125484406948089599609375p377
; [HW: 1.41497088038436569235045681125484406948089599609375p377] 

; mpf : + 1868862702268636 377
; mpfd: + 1868862702268636 377 (4.35568e+113) class: Pos. norm. non-zero
; hwf : + 1868862702268636 377 (4.35568e+113) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101111000 #b0110101000111011100010000001100000001011000011011101)))
(assert (= y (fp #b1 #b00111100110 #b1010000111010110100101100010110101111001111110001000)))
(assert (= r (fp #b0 #b10101111000 #b0110101000111011100010000001100000001011000011011100)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
