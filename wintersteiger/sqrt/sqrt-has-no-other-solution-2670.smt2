(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.418176311004959444517226074822247028350830078125p920 {+ 1883298678417104 920 (1.25697e+277)}
; 1.418176311004959444517226074822247028350830078125p920 S == 1.19087208003419053881088984780944883823394775390625p460
; [HW: 1.19087208003419053881088984780944883823394775390625p460] 

; mpf : + 859611428517412 460
; mpfd: + 859611428517412 460 (3.54538e+138) class: Pos. norm. non-zero
; hwf : + 859611428517412 460 (3.54538e+138) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110010111 #b0110101100001101100110100100101110111010011011010000)))
(assert (= r (fp #b0 #b10111001011 #b0011000011011100111111100001110101110111011000100100)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
