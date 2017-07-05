(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5791440230373667841234919251292012631893157958984375p-941 {+ 2608232806344935 -941 (8.49563e-284)}
; Y = 1.1269456195511671214859461542801000177860260009765625p-110 {+ 571712244906953 -110 (8.68167e-034)}
; 1.5791440230373667841234919251292012631893157958984375p-941 M 1.1269456195511671214859461542801000177860260009765625p-110 == 1.1269456195511671214859461542801000177860260009765625p-110
; [HW: 1.1269456195511671214859461542801000177860260009765625p-110] 

; mpf : + 571712244906953 -110
; mpfd: + 571712244906953 -110 (8.68167e-034) class: Pos. norm. non-zero
; hwf : + 571712244906953 -110 (8.68167e-034) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001010010 #b1001010001000010110010000101111010011110100011100111)))
(assert (= y (fp #b0 #b01110010001 #b0010000001111111100000100001010001010111101111001001)))
(assert (= r (fp #b0 #b01110010001 #b0010000001111111100000100001010001010111101111001001)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
