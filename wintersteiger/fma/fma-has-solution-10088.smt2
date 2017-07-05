(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.202382523163086691653234083787538111209869384765625p490 {+ 911449855903578 490 (3.84362e+147)}
; Y = 1.1981095870618505561111533097573556005954742431640625p-259 {+ 892206262470273 -259 (1.29338e-078)}
; Z = 1.7469211744870098979021122431731782853603363037109375p-812 {+ 3363833923094831 -812 (6.39612e-245)}
; 1.202382523163086691653234083787538111209869384765625p490 x 1.1981095870618505561111533097573556005954742431640625p-259 1.7469211744870098979021122431731782853603363037109375p-812 == 1.44058602831731175086815710528753697872161865234375p231
; [HW: 1.44058602831731175086815710528753697872161865234375p231] 

; mpf : + 1984223072954492 231
; mpfd: + 1984223072954492 231 (4.97128e+069) class: Pos. norm. non-zero
; hwf : + 1984223072954492 231 (4.97128e+069) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111101001 #b0011001111001111010101110100111001000100011101011010)))
(assert (= y (fp #b0 #b01011111100 #b0011001010110111010011110101010101110100011010000001)))
(assert (= z (fp #b0 #b00011010011 #b1011111100110110001110011110000100011100100100101111)))
(assert (= r (fp #b0 #b10011100110 #b0111000011001010001111101111011010110010100001111100)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
