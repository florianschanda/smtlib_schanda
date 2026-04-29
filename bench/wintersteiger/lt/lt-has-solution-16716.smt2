(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4572833506281919202507424415671266615390777587890625p741 {+ 2059421127491857 741 (1.68566e+223)}
; Y = -1.3495716787258407176608443478471599519252777099609375p-611 {- 1574330882048975 -611 (-1.58807e-184)}
; 1.4572833506281919202507424415671266615390777587890625p741 < -1.3495716787258407176608443478471599519252777099609375p-611 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011100100 #b0111010100010000100001011000101111110100000100010001)))
(assert (= y (fp #b1 #b00110011100 #b0101100101111101100001111000111110111100001111001111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
