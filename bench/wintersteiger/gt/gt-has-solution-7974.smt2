(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3106649300967154747610265985713340342044830322265625p-973 {+ 1399110463420649 -973 (1.64175e-293)}
; Y = -1.2485607504144642376786578097380697727203369140625p692 {- 1119418102945512 692 (-2.56547e+208)}
; 1.3106649300967154747610265985713340342044830322265625p-973 > -1.2485607504144642376786578097380697727203369140625p692 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000110010 #b0100111110000111101111001010001011000111100011101001)))
(assert (= y (fp #b1 #b11010110011 #b0011111110100001101011010110011000011001011011101000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
