(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.433114515958097801018311656662262976169586181640625p926 {+ 1950574372677642 926 (8.12937e+278)}
; Y = 1.8427702304662718635341889239498414099216461181640625p881 {+ 3795499695886849 881 (2.97096e+265)}
; 1.433114515958097801018311656662262976169586181640625p926 M 1.8427702304662718635341889239498414099216461181640625p881 == 1.433114515958097801018311656662262976169586181640625p926
; [HW: 1.433114515958097801018311656662262976169586181640625p926] 

; mpf : + 1950574372677642 926
; mpfd: + 1950574372677642 926 (8.12937e+278) class: Pos. norm. non-zero
; hwf : + 1950574372677642 926 (8.12937e+278) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110011101 #b0110111011100000100101111100100101110110100000001010)))
(assert (= y (fp #b0 #b11101110000 #b1101011110111111110010100011000111100101001000000001)))
(assert (= r (fp #b0 #b11110011101 #b0110111011100000100101111100100101110110100000001010)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
