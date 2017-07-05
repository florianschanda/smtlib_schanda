(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2035609908799413947377843214781023561954498291015625p-610 {- 916757202674073 -610 (-2.83251e-184)}
; Y = 1.1526827123494218785282328099128790199756622314453125p852 {+ 687621806442773 852 (3.46151e+256)}
; Z = -1.0068909216670134387783264173776842653751373291015625p-635 {- 31033952251801 -635 (-7.06212e-192)}
; -1.2035609908799413947377843214781023561954498291015625p-610 x 1.1526827123494218785282328099128790199756622314453125p852 -1.0068909216670134387783264173776842653751373291015625p-635 == -1.387323947445448624193886644206941127777099609375p242
; [HW: -1.387323947445448624193886644206941127777099609375p242] 

; mpf : - 1744351985386992 242
; mpfd: - 1744351985386992 242 (-9.80476e+072) class: Neg. norm. non-zero
; hwf : - 1744351985386992 242 (-9.80476e+072) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110011101 #b0011010000011100100100101011011010010010000110011001)))
(assert (= y (fp #b0 #b11101010011 #b0010011100010110001101101101100000110100100100010101)))
(assert (= z (fp #b1 #b00110000100 #b0000000111000011100110100111101100110010111110011001)))
(assert (= r (fp #b1 #b10011110001 #b0110001100100111101010011000011100111100010111110000)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
