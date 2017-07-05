(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.226004045736712289027536826324649155139923095703125p522 {- 1017831736164082 522 (-1.68325e+157)}
; Y = -1.007704743950893711001981500885449349880218505859375p970 {- 34699081986230 970 (-1.00561e+292)}
; Z = -1.4603110051486629661354754716739989817142486572265625p-591 {- 2073056471262057 -591 (-1.80185e-178)}
; -1.226004045736712289027536826324649155139923095703125p522 x -1.007704743950893711001981500885449349880218505859375p970 -1.4603110051486629661354754716739989817142486572265625p-591 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000001001 #b0011100111011011011001101011000100110011111011110010)))
(assert (= y (fp #b1 #b11111001001 #b0000000111111000111100000010011101001011000010110110)))
(assert (= z (fp #b1 #b00110110000 #b0111010111010110111100010010100100011010001101101001)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)
