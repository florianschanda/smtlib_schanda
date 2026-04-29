(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.728392158831787650541400580550543963909149169921875p569 {- 3280386655094430 569 (-3.33972e+171)}
; Y = 1.867258333350140020456819911487400531768798828125p-679 {+ 3905784306909648 -679 (7.44453e-205)}
; -1.728392158831787650541400580550543963909149169921875p569 < 1.867258333350140020456819911487400531768798828125p-679 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000111000 #b1011101001110111111010001001010011011000011010011110)))
(assert (= y (fp #b0 #b00101011000 #b1101111000000100101001000110001011101100000111010000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
