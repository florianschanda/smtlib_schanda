(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.387870790126771058936583358445204794406890869140625p62 {+ 1746814745882826 62 (6.40042e+018)}
; Y = 1.509070609032495458023959145066328346729278564453125p-617 {+ 2292650205144018 -617 (2.77461e-186)}
; 1.387870790126771058936583358445204794406890869140625p62 = 1.509070609032495458023959145066328346729278564453125p-617 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000111101 #b0110001101001011100000000000011010101011000011001010)))
(assert (= y (fp #b0 #b00110010110 #b1000001001010010011100111001000100100110001111010010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
