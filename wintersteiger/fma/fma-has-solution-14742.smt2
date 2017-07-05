(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6505495226839397293616684692096896469593048095703125p737 {- 2929814587945445 737 (-1.19326e+222)}
; Y = -1.6569820062032167840015972615219652652740478515625p632 {- 2958783918325928 632 (-2.95308e+190)}
; Z = -1.6663270005176828991722004502662457525730133056640625p-732 {- 3000870031238337 -732 (-7.3757e-221)}
; -1.6505495226839397293616684692096896469593048095703125p737 x -1.6569820062032167840015972615219652652740478515625p632 -1.6663270005176828991722004502662457525730133056640625p-732 == 1.9999999999999997779553950749686919152736663818359375p1023
; [HW: 1.9999999999999997779553950749686919152736663818359375p1023] 

; mpf : + 4503599627370495 1023
; mpfd: + 4503599627370495 1023 (1.79769e+308) class: Pos. norm. non-zero
; hwf : + 4503599627370495 1023 (1.79769e+308) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011100000 #b1010011010001010011010011101110001011011000111100101)))
(assert (= y (fp #b1 #b11001110111 #b1010100000101111111110010000011010110100000010101000)))
(assert (= z (fp #b1 #b00100100011 #b1010101010010100011010000000001110101010010011000001)))
(assert (= r (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
