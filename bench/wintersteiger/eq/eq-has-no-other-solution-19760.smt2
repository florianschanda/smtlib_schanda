(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.89419527379042396120212288224138319492340087890625p809 {+ 4027097501839012 809 (6.46683e+243)}
; Y = 1.5749129705912536802969725613365881145000457763671875p49 {+ 2589177840125235 49 (8.86597e+014)}
; 1.89419527379042396120212288224138319492340087890625p809 = 1.5749129705912536802969725613365881145000457763671875p49 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100101000 #b1110010011101001111110110100000100101010111010100100)))
(assert (= y (fp #b0 #b10000110000 #b1001001100101101011111110001011010111100010100110011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
