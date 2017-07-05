(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2296783604833902980857374132028780877590179443359375p214 {- 1034379378688063 214 (-3.23751e+064)}
; Y = 1.92662935951040825699465131037868559360504150390625p-513 {+ 4173167638201636 -513 (7.18473e-155)}
; Z = -1.7184230565836087212261418244452215731143951416015625p151 {- 3235489809924313 151 (-4.90523e+045)}
; -1.2296783604833902980857374132028780877590179443359375p214 x 1.92662935951040825699465131037868559360504150390625p-513 -1.7184230565836087212261418244452215731143951416015625p151 == -1.718423056583608943270746749476529657840728759765625p151
; [HW: -1.718423056583608943270746749476529657840728759765625p151] 

; mpf : - 3235489809924314 151
; mpfd: - 3235489809924314 151 (-4.90523e+045) class: Neg. norm. non-zero
; hwf : - 3235489809924314 151 (-4.90523e+045) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011010101 #b0011101011001100001100110111011011100000000000111111)))
(assert (= y (fp #b0 #b00111111110 #b1110110100110111100101001110101010011100010100100100)))
(assert (= z (fp #b1 #b10010010110 #b1011011111101010100100101100110010111000000011011001)))
(assert (= r (fp #b1 #b10010010110 #b1011011111101010100100101100110010111000000011011010)))
(assert (= (fp.fma roundTowardNegative x y z) r))
(check-sat)
(exit)
