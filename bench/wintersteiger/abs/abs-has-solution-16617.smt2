(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3245681788712981852285111017408780753612518310546875p-912 {- 1461725129421099 -912 (-3.82576e-275)}
; -1.3245681788712981852285111017408780753612518310546875p-912 | == 1.3245681788712981852285111017408780753612518310546875p-912
; [HW: 1.3245681788712981852285111017408780753612518310546875p-912] 

; mpf : + 1461725129421099 -912
; mpfd: + 1461725129421099 -912 (3.82576e-275) class: Pos. norm. non-zero
; hwf : + 1461725129421099 -912 (3.82576e-275) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001101111 #b0101001100010110111001100111000110010011000100101011)))
(assert (= r (fp #b0 #b00001101111 #b0101001100010110111001100111000110010011000100101011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
