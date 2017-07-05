(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5472704174442479807538575187209062278270721435546875p-68 {+ 2464686848072811 -68 (5.24236e-021)}
; Y = -1.8271151174876536504854129816521890461444854736328125p1009 {- 3724995334909901 1009 (-1.00238e+304)}
; Z = -1.019952999096484180796551299863494932651519775390625p-925 {- 89860319295850 -925 (-3.59612e-279)}
; 1.5472704174442479807538575187209062278270721435546875p-68 x -1.8271151174876536504854129816521890461444854736328125p1009 -1.019952999096484180796551299863494932651519775390625p-925 == -1.41352058527690882527849680627696216106414794921875p942
; [HW: -1.41352058527690882527849680627696216106414794921875p942] 

; mpf : - 1862331153763116 942
; mpfd: - 1862331153763116 942 (-5.25482e+283) class: Neg. norm. non-zero
; hwf : - 1862331153763116 942 (-5.25482e+283) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110111011 #b1000110000011001111010100000000011111101110001101011)))
(assert (= y (fp #b1 #b11111110000 #b1101001110111101110100001111101110100010111111001101)))
(assert (= z (fp #b1 #b00001100010 #b0000010100011011101000111100011010010011100101101010)))
(assert (= r (fp #b1 #b11110101101 #b0110100111011100011111000010110111111100101100101100)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)
