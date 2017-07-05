(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.824751172147564215464399239863269031047821044921875p-509 {+ 3714349071557150 -509 (1.08877e-153)}
; Y = -1.349100943472257174704509452567435801029205322265625p-441 {- 1572210878936346 -441 (-2.37584e-133)}
; 1.824751172147564215464399239863269031047821044921875p-509 < -1.349100943472257174704509452567435801029205322265625p-441 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000000010 #b1101001100100010111001001000111110110110001000011110)))
(assert (= y (fp #b1 #b01001000110 #b0101100101011110101011011110111100110111010100011010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
