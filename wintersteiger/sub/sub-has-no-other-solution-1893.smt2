(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.966836808149547977109250496141612529754638671875p689 {+ 4354245888910384 689 (5.05167e+207)}
; Y = -1.684703300408329607051882703672163188457489013671875p-786 {- 3083629528578302 -786 (-4.13949e-237)}
; 1.966836808149547977109250496141612529754638671875p689 - -1.684703300408329607051882703672163188457489013671875p-786 == 1.966836808149547977109250496141612529754638671875p689
; [HW: 1.966836808149547977109250496141612529754638671875p689] 

; mpf : + 4354245888910384 689
; mpfd: + 4354245888910384 689 (5.05167e+207) class: Pos. norm. non-zero
; hwf : + 4354245888910384 689 (5.05167e+207) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010110000 #b1111011110000010100111011111011110010010010000110000)))
(assert (= y (fp #b1 #b00011101101 #b1010111101001000101101110010101010110111100011111110)))
(assert (= r (fp #b0 #b11010110000 #b1111011110000010100111011111011110010010010000110000)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
