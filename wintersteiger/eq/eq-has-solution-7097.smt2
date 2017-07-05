(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.701426461297696146601765576633624732494354248046875p141 {+ 3158943949728110 141 (4.74288e+042)}
; Y = -1.2292359986742429356354477931745350360870361328125p-668 {- 1032387158209224 -668 (-1.00369e-201)}
; 1.701426461297696146601765576633624732494354248046875p141 = -1.2292359986742429356354477931745350360870361328125p-668 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010001100 #b1011001110010000101011110011111111010010100101101110)))
(assert (= y (fp #b1 #b00101100011 #b0011101010101111001101011101110101011111001011001000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
