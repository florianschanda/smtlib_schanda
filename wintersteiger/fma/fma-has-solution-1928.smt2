(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9770713367705610163937990364502184092998504638671875p359 {- 4400338108194291 359 (-2.32162e+108)}
; Y = -1.5009083716384721274295088733197189867496490478515625p-295 {- 2255890755857785 -295 (-2.35779e-089)}
; Z = -1.8992903616832033097949761213385500013828277587890625p28 {- 4050043737774353 28 (-5.09837e+008)}
; -1.9770713367705610163937990364502184092998504638671875p359 x -1.5009083716384721274295088733197189867496490478515625p-295 -1.8992903616832033097949761213385500013828277587890625p28 == 1.4837014603288809500014622244634665548801422119140625p65
; [HW: 1.4837014603288809500014622244634665548801422119140625p65] 

; mpf : + 2178397716495713 65
; mpfd: + 2178397716495713 65 (5.47389e+019) class: Pos. norm. non-zero
; hwf : + 2178397716495713 65 (5.47389e+019) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101100110 #b1111101000100001010110001101110101001001110111110011)))
(assert (= y (fp #b1 #b01011011000 #b1000000000111011100001111111001001111010110101111001)))
(assert (= z (fp #b1 #b10000011011 #b1110011000110111111001001010010100001001100100010001)))
(assert (= r (fp #b0 #b10001000000 #b0111101111010011110110111110000100100011110101100001)))
(assert (= (fp.fma roundTowardPositive x y z) r))
(check-sat)
(exit)
