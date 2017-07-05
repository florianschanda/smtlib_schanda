(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0476831102850592269959406621637754142284393310546875p609 {+ 214745637711659 609 (2.22586e+183)}
; Y = 1.285387971866283951527520912350155413150787353515625p-250 {+ 1285273163753018 -250 (7.10453e-076)}
; 1.0476831102850592269959406621637754142284393310546875p609 m 1.285387971866283951527520912350155413150787353515625p-250 == 1.285387971866283951527520912350155413150787353515625p-250
; [HW: 1.285387971866283951527520912350155413150787353515625p-250] 

; mpf : + 1285273163753018 -250
; mpfd: + 1285273163753018 -250 (7.10453e-076) class: Pos. norm. non-zero
; hwf : + 1285273163753018 -250 (7.10453e-076) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001100000 #b0000110000110100111101011101011100111110111100101011)))
(assert (= y (fp #b0 #b01100000101 #b0100100100001111001011111010010111010110011000111010)))
(assert (= r (fp #b0 #b01100000101 #b0100100100001111001011111010010111010110011000111010)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
