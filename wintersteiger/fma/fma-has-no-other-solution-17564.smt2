(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9032467022848724713668389085796661674976348876953125p680 {+ 4067861511833781 680 (9.54755e+204)}
; Y = 1.789635782731660018640695852809585630893707275390625p-42 {+ 3556203416868714 -42 (4.06916e-013)}
; Z = 1.3795378453044466748877994177746586501598358154296875p63 {+ 1709286498686107 63 (1.2724e+019)}
; 1.9032467022848724713668389085796661674976348876953125p680 x 1.789635782731660018640695852809585630893707275390625p-42 1.3795378453044466748877994177746586501598358154296875p63 == 1.703059200887519164524519510450772941112518310546875p639
; [HW: 1.703059200887519164524519510450772941112518310546875p639] 

; mpf : + 3166297155136430 639
; mpfd: + 3166297155136430 639 (3.88505e+192) class: Pos. norm. non-zero
; hwf : + 3166297155136430 639 (3.88505e+192) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010100111 #b1110011100111011001011010000011010001000100010110101)))
(assert (= y (fp #b0 #b01111010101 #b1100101000100101100100100001011010010101011101101010)))
(assert (= z (fp #b0 #b10000111110 #b0110000100101001011001000110100100101101010010011011)))
(assert (= r (fp #b0 #b11001111110 #b1011001111111011101100000001001011110110101110101110)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)
