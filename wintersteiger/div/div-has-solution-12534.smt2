(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.564746466363175603220270204474218189716339111328125p-786 {- 2543391975472002 -786 (-3.84474e-237)}
; Y = -1.0698519859338675441762234186171554028987884521484375p-990 {- 314585377822855 -990 (-1.02242e-298)}
; -1.564746466363175603220270204474218189716339111328125p-786 / -1.0698519859338675441762234186171554028987884521484375p-990 == 1.462582195421469943852343931212089955806732177734375p204
; [HW: 1.462582195421469943852343931212089955806732177734375p204] 

; mpf : + 2083285002928358 204
; mpfd: + 2083285002928358 204 (3.76045e+061) class: Pos. norm. non-zero
; hwf : + 2083285002928358 204 (3.76045e+061) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011101101 #b1001000010010011001110010111001110001111101110000010)))
(assert (= y (fp #b1 #b00000100001 #b0001000111100001110100011101101100100101100010000111)))
(assert (= r (fp #b0 #b10011001011 #b0111011001101011110010010110100100001100000011100110)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
