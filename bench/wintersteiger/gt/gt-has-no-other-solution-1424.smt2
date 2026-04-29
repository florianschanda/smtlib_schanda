(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.910730597477229064651282897102646529674530029296875p-685 {+ 4101565979433358 -685 (1.19029e-206)}
; Y = -1.2333267813038182314500090797082521021366119384765625p-424 {- 1050810405335433 -424 (-2.84682e-128)}
; 1.910730597477229064651282897102646529674530029296875p-685 > -1.2333267813038182314500090797082521021366119384765625p-424 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101010010 #b1110100100100101101000111111001110100001100110001110)))
(assert (= y (fp #b1 #b01001010111 #b0011101110111011010011011100111011111011000110001001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
