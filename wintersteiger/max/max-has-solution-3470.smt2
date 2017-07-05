(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4430822632690849527392629170208238065242767333984375p11 {+ 1995465115753127 11 (2955.43)}
; Y = -1.7534719530066846804317037822329439222812652587890625p503 {- 3393336006795025 503 (-4.59184e+151)}
; 1.4430822632690849527392629170208238065242767333984375p11 M -1.7534719530066846804317037822329439222812652587890625p503 == 1.4430822632690849527392629170208238065242767333984375p11
; [HW: 1.4430822632690849527392629170208238065242767333984375p11] 

; mpf : + 1995465115753127 11
; mpfd: + 1995465115753127 11 (2955.43) class: Pos. norm. non-zero
; hwf : + 1995465115753127 11 (2955.43) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000001010 #b0111000101101101110101101101011000101101101010100111)))
(assert (= y (fp #b1 #b10111110110 #b1100000011100011100010011011010010011101111100010001)))
(assert (= r (fp #b0 #b10000001010 #b0111000101101101110101101101011000101101101010100111)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
