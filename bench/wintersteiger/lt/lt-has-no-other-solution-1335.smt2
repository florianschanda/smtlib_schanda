(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.651151991325333856508450480760075151920318603515625p362 {+ 2932527865494330 362 (1.55112e+109)}
; Y = -1.9711697612079992492084556943154893815517425537109375p210 {- 4373759774689839 210 (-3.24357e+063)}
; 1.651151991325333856508450480760075151920318603515625p362 < -1.9711697612079992492084556943154893815517425537109375p210 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101101001 #b1010011010110001111001011001101101110111101100111010)))
(assert (= y (fp #b1 #b10011010001 #b1111100010011110100101001101101101000000101000101111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
