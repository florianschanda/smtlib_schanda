(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.938269016862447013949122265330515801906585693359375p501 {+ 4225587994714998 501 (1.26894e+151)}
; Y = 1.2444273390240834231690314481966197490692138671875p-328 {+ 1100802872948024 -328 (2.27578e-099)}
; 1.938269016862447013949122265330515801906585693359375p501 = 1.2444273390240834231690314481966197490692138671875p-328 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111110100 #b1111000000110010011001011111011001000110001101110110)))
(assert (= y (fp #b0 #b01010110111 #b0011111010010010110010100100001101011011010100111000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
