(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8250433971307227221103630654397420585155487060546875p-878 {- 3715665135882411 -878 (-9.05601e-265)}
; Y = -1.1162188501791383554717640436138026416301727294921875p583 {- 523403170360195 583 (-3.53376e+175)}
; Z = 1.2877621247355730549344343671691603958606719970703125p-317 {+ 1295965397730469 -317 (4.82311e-096)}
; -1.8250433971307227221103630654397420585155487060546875p-878 x -1.1162188501791383554717640436138026416301727294921875p583 1.2877621247355730549344343671691603958606719970703125p-317 == 1.01857407464934990315441609709523618221282958984375p-294
; [HW: 1.01857407464934990315441609709523618221282958984375p-294] 

; mpf : + 83650195669564 -294
; mpfd: + 83650195669564 -294 (3.20018e-089) class: Pos. norm. non-zero
; hwf : + 83650195669564 -294 (3.20018e-089) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010010001 #b1101001100110110000010110100100001110101000010101011)))
(assert (= y (fp #b1 #b11001000110 #b0001110111000000100001001100000010110010101110000011)))
(assert (= z (fp #b0 #b01011000010 #b0100100110101010110001110101001011000100010010100101)))
(assert (= r (fp #b0 #b01011011001 #b0000010011000001010001010100001100101100001000111100)))
(assert (= (fp.fma roundTowardNegative x y z) r))
(check-sat)
(exit)
