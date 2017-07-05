(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.915898886255645638954092646599747240543365478515625p-675 {+ 4124841882849978 -675 (1.22215e-203)}
; Y = -1.537646622974563559438365700771100819110870361328125p-288 {- 2421345130885250 -288 (-3.09185e-087)}
; Z = 1.33522776895042483147335588000714778900146484375p726 {+ 1509731655329376 726 (4.71338e+218)}
; 1.915898886255645638954092646599747240543365478515625p-675 x -1.537646622974563559438365700771100819110870361328125p-288 1.33522776895042483147335588000714778900146484375p726 == 1.3352277689504246094287509549758397042751312255859375p726
; [HW: 1.3352277689504246094287509549758397042751312255859375p726] 

; mpf : + 1509731655329375 726
; mpfd: + 1509731655329375 726 (4.71338e+218) class: Pos. norm. non-zero
; hwf : + 1509731655329375 726 (4.71338e+218) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101011100 #b1110101001111000010110010111001011101001001010111010)))
(assert (= y (fp #b1 #b01011011111 #b1000100110100011001101011000011001111011000010000010)))
(assert (= z (fp #b0 #b11011010101 #b0101010111010001011111001011000001011010011001100000)))
(assert (= r (fp #b0 #b11011010101 #b0101010111010001011111001011000001011010011001011111)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)
