(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5086629283096082421167238862835802137851715087890625p-235 {+ 2290814174392337 -235 (2.73239e-071)}
; Y = -1.503417600630667205763302263221703469753265380859375p905 {- 2267191318612022 905 (-4.06655e+272)}
; Z = 1.5691640864096194629695446565165184438228607177734375p10 {+ 2563287167467031 10 (1606.82)}
; 1.5086629283096082421167238862835802137851715087890625p-235 x -1.503417600630667205763302263221703469753265380859375p905 1.5691640864096194629695446565165184438228607177734375p10 == -1.1340751999198339650121170052443630993366241455078125p671
; [HW: -1.1340751999198339650121170052443630993366241455078125p671] 

; mpf : - 603821020398589 671
; mpfd: - 603821020398589 671 (-1.11114e+202) class: Neg. norm. non-zero
; hwf : - 603821020398589 671 (-1.11114e+202) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100010100 #b1000001000110111101110111101000111000111000000010001)))
(assert (= y (fp #b1 #b11110001000 #b1000000011011111111110011101001011110000100000110110)))
(assert (= z (fp #b0 #b10000001001 #b1001000110110100101111001101000100101111111000010111)))
(assert (= r (fp #b1 #b11010011110 #b0010001001010010110000001001011011011100001111111101)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)
