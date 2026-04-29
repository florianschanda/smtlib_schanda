(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7430666796873828250369342640624381601810455322265625p32 {- 3346474821751529 32 (-7.48641e+009)}
; Y = 1.79556460540565243633182035409845411777496337890625p-381 {+ 3582904460454052 -381 (3.64563e-115)}
; -1.7430666796873828250369342640624381601810455322265625p32 > 1.79556460540565243633182035409845411777496337890625p-381 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000011111 #b1011111000111001100111100011000000000001001011101001)))
(assert (= y (fp #b0 #b01010000010 #b1100101110101010000111110011101000010010100010100100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
