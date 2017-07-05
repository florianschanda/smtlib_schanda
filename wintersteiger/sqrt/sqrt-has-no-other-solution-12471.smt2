(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.783441107199264852312126095057465136051177978515625p-906 {+ 3528305078449338 -906 (3.29672e-273)}
; 1.783441107199264852312126095057465136051177978515625p-906 S == 1.3354553931896282481517346241162158548831939697265625p-453
; [HW: 1.3354553931896282481517346241162158548831939697265625p-453] 

; mpf : + 1510756783768233 -453
; mpfd: + 1510756783768233 -453 (5.74171e-137) class: Pos. norm. non-zero
; hwf : + 1510756783768233 -453 (5.74171e-137) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001110101 #b1100100010001111100110001010110111000011010010111010)))
(assert (= r (fp #b0 #b01000111010 #b0101010111100000011001111001011100000100001010101001)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
